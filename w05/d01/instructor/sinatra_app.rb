require 'redis'

class Server < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
    $redis = Redis.new
  end

  get '/' do
    render :erb, :index, layout: :default
  end

  get '/login' do
    session[:name]      = params[:name]
    session[:timestamp] = Time.now
    redirect to(params[:name])
  end

  get '/:username' do
    authorize!

    @name = params[:username]
    @secrets = $redis.lrange "diary:#{@name}", 0, -1

    render :erb, :user, layout: :default
  end

  def authorize!
    if session[:name] != params[:username]
      redirect to('/')
    end
  end

end
