module Exercise
  class Server < Sinatra::Base

    configure :development do
      require 'pry'
      register Sinatra::Reloader
    end

    get('/') do
      render(:erb, :index, :layout => :default)
    end

  end
end
