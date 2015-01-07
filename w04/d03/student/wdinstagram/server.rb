module Wdinstagram
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

    ########################
    # Routes
    ########################

    get('/') do
      render(:erb, :index, :layout => :default)
    end
  end
end
