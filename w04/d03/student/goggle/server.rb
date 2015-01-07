module Goggle
  class Server < Sinatra::Base

    configure :development do
      register Sinatra::Reloader
    end

    get("/") do
      render(:erb, :index)
    end

  end
end
