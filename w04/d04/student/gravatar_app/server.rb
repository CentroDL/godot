module GravatarApp
  class Server < Sinatra::Base

    configure :development do
      register Sinatra::Reloader
    end

    get('/') do
      render(:erb, :index, {:layout => :default})
    end

    get('/students') do
    end
  end # Server
end # GravatarApp
