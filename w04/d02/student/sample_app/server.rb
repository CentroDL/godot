module App
  class Server < Sinatra::Base

    configure :development do
      register Sinatra::Reloader
      # TODO instantiate a new Redis connection
      # set the host to 127.0.0.1 and the port to 6379
      # and assign it to $redis
      $redis = Redis.new host: "127.0.0.1", port: 6379
    end

    configure :production do
      # Settings for the production environment..
    end

    get('/') do
      @visitor_count = $redis.incr("visitor_count")
      @last_viewed = $redis.lrange "testList", -5, -1
      render(:erb, :index, :layout => :default)
    end

    get '/shop/:more' do
      department=params[:more]
      @visitor_count = $redis.incr "counter:#{department}"
      @last_viewed = $redis.lrange "testList", -5, -1
      $redis.rpush "testList", department
      render :erb, :index, layout: :default
    end

  end # Server
end # App
