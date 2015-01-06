module App
  class Server < Sinatra::Base

    configure :development do
      register Sinatra::Reloader
      # TODO instantiate a new Redis connection
      # set the host to 127.0.0.1 and the port to 6379
      # and assign it to $redis
    end
    configure :production do
      # Settings for the production environment..
    end

    get('/') do
      render(:erb, :index, :layout => :default)
    end

  end # Server
end # App
