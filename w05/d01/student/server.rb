module DearDiary
  class Server < Sinatra::Base

    configure :development do
      register Sinatra::Reloader
      $redis = Redis.new
    end

    get '/' do
      erb :index
    end

    get '/login' do
      redirect params[:name]
    end

    get '/:username' do
      @name = params[:username]
      @secrets = $redis.lrange "diary:#{@name}", 0, -1
      erb :user
    end

  end
end
