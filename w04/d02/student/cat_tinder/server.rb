module CatTinder

  class Server < Sinatra::Base

    ########################
    # Configuration
    ########################

    # allow simple "logging" of server output
    enable :logging

    configure :development do
      register Sinatra::Reloader
      $redis = Redis.new
    end

    helpers CatTinder::DatabaseHelper

    ########################
    # Routes
    ########################
    get '/' do
      render :erb, :index, layout: :default_layout
    end

    get '/cats' do
      @cats = ids
      render :erb, :cats, layout: :default_layout
    end

    get '/cats/:id' do
      @id = params[:id]
      render :erb, :cat, layout: :default_layout
    end

  end#Server

end


