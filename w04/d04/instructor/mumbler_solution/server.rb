module Mumbler
  class Server < Sinatra::Base

    ########################
    # Configuration
    ########################

    helpers Mumbler::DatabaseHelper
    helpers Mumbler::GravatarHelper

    # allow simple "logging" of server output
    enable :logging

    configure :development do
      register Sinatra::Reloader
      $redis = Redis.new
    end

    ########################
    # Routes
    ########################

    get('/') do
      redirect to('/mumbles')
    end

    get('/mumbles') do
      @mumbles = mumbles.sort_by {|mumble| mumble["date"]}
      render(:erb, :index, :layout => :default)
    end

    get('/mumbles/new') do
      render(:erb, :new, :layout => :default)
    end

    get('/mumbles/:id') do
      @mumble = mumble(params[:id])
      render(:erb, :show, :layout => :default)
    end

    post('/mumbles') do
      if params['text'] == '' || params['author_email'] == ''
        redirect to('/mumbles/new')
      end

      # try to get gravatar info
      grav_data = gravatar_author_info(params['author_email'])

      # if there is gravatar info
      unless grav_data.nil?
        # use the gravatar info for either relevant field if that field is
        # empty, using the method defined below...
        params["author_handle"] = grav_data["author_handle"]       if empty_param?("author_handle")
        params["author_thumbnail"] = grav_data["author_thumbnail"] if empty_param?("author_thumbnail")
      end

      # create the mumble and get its id
      id = create_mumble(params)
      redirect to("/mumbles/#{id}")
    end

    def empty_param?(key)
      params[key].nil? || params[key] == ""
    end
  end
end
