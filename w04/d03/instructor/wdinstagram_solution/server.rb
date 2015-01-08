module Wdinstagram
  class Server < Sinatra::Base

    ########################
    # Configuration
    ########################
    
    helpers Wdinstagram::DatabaseHelper

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
      redirect to('/entries')
    end

    get('/entries') do
      @entries = entries
      puts @entries
      render(:erb, :index, :layout => :default)
    end

    get('/entries/new') do
      render(:erb, :new, :layout => :default)
    end

    get('/entries/:id') do
      puts params
      @entry = entry(params[:id])
      render(:erb, :show, :layout => :default)
    end

    post('/entries') do
      id = create_entry(
        params["author"], 
        params["date_taken"], 
        params["photo_url"]
      )
      redirect to("/entries/#{id}")
    end
  end
end
