require 'redis'

class Server < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
    $redis = Redis.new
  end

  get '/' do
    render :erb, :index, layout: :default
  end

  get '/login' do
    # require 'pry'; binding.pry
    redirect to(params[:name])
  end

  get '/:username' do
    @name = params[:username]
    @secrets = $redis.lrange "diary:#{@name}", 0, -1

    render :erb, :user, layout: :default
  end
end
