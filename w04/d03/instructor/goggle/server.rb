module Goggle
  class Server < Sinatra::Base

    configure :development do
      register Sinatra::Reloader
    end

    get("/") do
      # binding.pry
      render(:erb, :index)
    end

  end
end
