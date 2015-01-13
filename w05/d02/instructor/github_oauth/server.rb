module GithubOauth
  class Server < Sinatra::Base

    enable :logging, :sessions

    configure :development do
      register Sinatra::Reloader
      require 'pry'
    end

    get('/') do
      # builds out the params we'll need to pass to GitHub
      query_params = URI.encode_www_form({
        :client_id     => ENV["GITHUB_OAUTH_ID"],
        :scope         => "",    # part of many OAuth requests, but not with GitHub
      })
      @github_auth_url = "https://github.com/login/oauth/authorize?" + query_params
      render(:erb, :index)
    end

    get("/oauth_callback") do
      response = HTTParty.post(
        "https://github.com/login/oauth/access_token",
        :body => {
          :code          => params[:code],
          :client_id     => ENV["GITHUB_OAUTH_ID"],
          :client_secret => ENV["GITHUB_OAUTH_SECRET"],
        },
        :headers => {
          "Accept" => "application/json"
        }
      )
      session[:access_token] = response["access_token"]
      get_user_info
      redirect to('/')
    end

    get('/logout') do
      session[:name] = session[:access_token] = nil # dual assignment!
      redirect to("/")
    end

    # ########################
    # # Helper methods
    # ########################

    # authorized API call (after OAuth complete!)
    def get_user_info
      response = HTTParty.get(
        "https://api.github.com/user",
        :headers => {
          "Authorization" => "Bearer #{session[:access_token]}",
          "User-Agent"    => "OAuth Test App"
        }
      )
      session[:email]      = response["email"]
      session[:name]       = response["name"]
      session[:user_image] = response["avatar_url"]
      session[:provider]   = "GitHub"
    end

  end
end
