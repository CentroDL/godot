module App
  class Server < Sinatra::Base

    configure :development do
      register Sinatra::Reloader
      # TODO instantiate a new Redis connection
      # set the host to 127.0.0.1 and the port to 6379
      # and assign it to $redis
      $redis = Redis.new({
        :host => "127.0.0.1",
        :port => 6379
      })
    end
    configure :production do
      # Settings for the production environment..
    end

    get('/') do
      @visitor_count = $redis.incr("visitor_count")
      render(:erb, :index, :layout => :default)
    end

    get('/shop/:more') do
      department = params[:more]
      # incrementing values in a hash
      @visitor_count = $redis.hincrby("counter", department, 1)
      # pushing department names into a list
      $redis.lpush("pages_viewed", department)
      # retrieving the full list of pages viewed
      @pages_viewed = $redis.lrange("pages_viewed", 0, -1)
      render(:erb, :index, :layout => :default)
    end
  end # Server
end # App
