require 'sinatra/base'
require 'sinatra/namespace'

require 'awesome_print'
require 'rest_client'
require 'redcarpet'
require 'uri'
require 'pry'

class App < Sinatra::Base
  ########################
  # Configuration
  ########################
  register Sinatra::Namespace

  enable :logging
  enable :method_override
  enable :sessions

  # set the session's cookie hash yourself, so that all of your application's
  # instances share it:
  set :session_secret, SecureRandom.urlsafe_base64

  OAUTH_PROVIDERS = {
    :Google => {
      :app_id          => ENV["GOOGLE_OAUTH_ID"],
      :app_secret_key  => ENV["GOOGLE_OAUTH_SECRET"],
      :scopes          => 'openid email profile', # available secret API data
      :auth_uri        => 'https://accounts.google.com/o/oauth2/auth',
      :token_uri       => 'https://accounts.google.com/o/oauth2/token',
      :api_profile_uri => 'https://www.googleapis.com/plus/v1/people/me'
    },
    :GitHub => {
      :app_id          => ENV["GITHUB_OAUTH_ID"],
      :app_secret_key  => ENV["GITHUB_OAUTH_SECRET"],
      :scopes          => '', # available secret API data
      :auth_uri        => 'https://github.com/login/oauth/authorize',
      :token_uri       => 'https://github.com/login/oauth/access_token',
      :api_profile_uri => 'https://api.github.com/user'
    },
    :Facebook => {
      :app_id          => ENV["FACEBOOK_OAUTH_ID"],
      :app_secret_key  => ENV["FACEBOOK_OAUTH_SECRET"],
      :scopes          => 'email public_profile', # available secret API data
      :auth_uri        => 'https://www.facebook.com/dialog/oauth',
      :token_uri       => 'https://graph.facebook.com/oauth/access_token',
      :api_profile_uri => 'https://graph.facebook.com/me'
    },
    :DropBox => {
      :app_id          => ENV["DROPBOX_OAUTH_ID"],
      :app_secret_key  => ENV["DROPBOX_OAUTH_SECRET"],
      :scopes          => '',
      :auth_uri        => 'https://www.dropbox.com/1/oauth2/authorize',
      :token_uri       => 'https://api.dropbox.com/1/oauth2/token',
      :api_profile_uri => 'https://api.dropbox.com/1/account/info'
    },
    :LinkedIn => {
      :app_id          => ENV["LINKEDIN_OAUTH_ID"],
      :app_secret_key  => ENV["LINKEDIN_OAUTH_SECRET"],
      :scopes          => 'r_basicprofile r_emailaddress',
      :auth_uri        => 'https://www.linkedin.com/uas/oauth2/authorization',
      :token_uri       => 'https://www.linkedin.com/uas/oauth2/accessToken',
      :api_profile_uri => 'https://api.linkedin.com/v1/people/~:(first-name,last-name,email-address)?format=json'
    }
  }

  def can_link_to?(provider)
    provider = OAUTH_PROVIDERS[provider.to_sym]
    ! (provider[:app_id].nil? || provider[:app_secret_key].nil?)
  end

  ########################
  # Callback, ie Redirect, URI
  ########################

  REDIRECT_PATH = '/oauth_callback'

  def build_redirect_uri_for(provider)
    # PJ: make the redirect work on any port and any server, instead
    #     of hard-coding it!
    namespace = "/" + provider.to_s.downcase
    port      = (request.port == 80) ? "" : ":" + request.port.to_s
    "http://#{request.host}#{port}#{namespace}#{REDIRECT_PATH}"
  end

  ########################
  # "State" methods
  ########################

  # in order to reduce CSRF attacks:
  #   1. create and store in session a random number known as 'state' or 'csrf'
  #   2. send it in the authorization request over SSL (https://)
  #   3. check the params in the OAuth callback to ensure it's the same!
  #   4. clear the state and use a new one next time!

  def session_state
    session[:state] ||= SecureRandom.urlsafe_base64
  end

  def clear_session_state
    session[:state] = nil
  end

  def request_state_equals_stored_state
    params[:state] == session[:state]
  end

  ########################
  # OAuth methods
  ########################

  def auth_uri_with_query_params_for(provider)
    query_params = "?" + URI.encode_www_form({
      :response_type => 'code',
      :client_id     => OAUTH_PROVIDERS[provider][:app_id],
      :redirect_uri  => build_redirect_uri_for(provider),
      :scope         => OAUTH_PROVIDERS[provider][:scopes],
      :state         => session_state
    })
    OAUTH_PROVIDERS[provider][:auth_uri] + query_params
  end

  def get_access_token_for(provider)
    authorization_code = params[:code]
    token_uri          = OAUTH_PROVIDERS[provider][:token_uri]

    request_params = {
      :code          => authorization_code,
      :client_id     => OAUTH_PROVIDERS[provider][:app_id],
      :client_secret => OAUTH_PROVIDERS[provider][:app_secret_key],
      :redirect_uri  => build_redirect_uri_for(provider),
      :grant_type    => "authorization_code"
    }

    case provider
    when :Google, :GitHub, :DropBox, :LinkedIn
      response = RestClient.post(token_uri, request_params, {:accept => :json})
      session[:access_token] = JSON.parse(response)["access_token"]
    when :Facebook
      query_string = URI.encode_www_form(request_params)
      response = RestClient.get("#{token_uri}?#{query_string}")
      # response for facebook isn't json; it's structured like query params
      response = URI.decode_www_form(response).inject({}) { |h, a| h[a[0]] = a[1]; h }
      session[:access_token] = response["access_token"]
    end
  end

  ########################
  # Authorized API call (after OAuth complete!)
  ########################

  def get_user_info_from(provider)
    response = RestClient.get(
      OAUTH_PROVIDERS[provider][:api_profile_uri],
      {:Authorization => "Bearer #{session[:access_token]}"}
    )
    user_info = JSON.parse(response)

    case provider
    when :Google
      session[:current_user] = {
        :email    => user_info["emails"][0]["value"],
        :name     => user_info["displayName"],
        :provider => provider
      }
    when :GitHub, :Facebook
      session[:current_user] = {
        :email    => user_info["email"],
        :name     => user_info["name"],
        :provider => provider
      }
    when :DropBox
      session[:current_user] = {
        :email    => user_info["email"],
        :name     => user_info["display_name"],
        :provider => provider
      }
    when :LinkedIn
      session[:current_user] = {
        :email    => user_info["emailAddress"],
        :name     => user_info["firstName"] + " " + user_info["lastName"],
        :provider => provider
      }
    end
  end

  ########################
  # Routes
  ########################

  get('/') do
    @providers = {}
    OAUTH_PROVIDERS.each do |provider, data|
        @providers[provider] = auth_uri_with_query_params_for(provider)
    end

    render(:erb, :index)
  end

  get('/logout') do
    session[:current_user] = session[:access_token] = nil
    redirect to("/")
  end

  ########################
  # OAuth redirects
  ########################

  namespace('/google') do
    get(REDIRECT_PATH) do
      if request_state_equals_stored_state
        get_access_token_for(:Google)
        clear_session_state
        get_user_info_from(:Google)
      else
        session[:handshake_failed] = true
      end
      redirect to('/')
    end
  end

  namespace('/github') do
    get(REDIRECT_PATH) do
      if request_state_equals_stored_state
        get_access_token_for(:GitHub)
        clear_session_state
        get_user_info_from(:GitHub)
      else
        session[:handshake_failed] = true
      end
      redirect to('/')
    end
  end

  namespace('/facebook') do
    get(REDIRECT_PATH) do
      if request_state_equals_stored_state
        get_access_token_for(:Facebook)
        clear_session_state
        get_user_info_from(:Facebook)
      else
        session[:handshake_failed] = true
      end
      redirect to('/')
    end
  end

  namespace('/dropbox') do
    get(REDIRECT_PATH) do
      if request_state_equals_stored_state
        get_access_token_for(:DropBox)
        clear_session_state
        get_user_info_from(:DropBox)
      else
        session[:handshake_failed] = true
      end
      redirect to('/')
    end
  end

  namespace('/linkedin') do
    get(REDIRECT_PATH) do
      if request_state_equals_stored_state
        get_access_token_for(:LinkedIn)
        clear_session_state
        get_user_info_from(:LinkedIn)
      else
        session[:handshake_failed] = true
      end
      redirect to('/')
    end
  end
end
