module Koopa
  class Server < Sinatra::Base

    configure :development do
      register Sinatra::Reloader
      $db = Redis.new
    end


    get '/:id' do
      $db.incr "page_views"
      erb :index
    end

  end
end
