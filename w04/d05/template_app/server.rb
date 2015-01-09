module AppName
  class Server < Sinatra::Base

    ########################
    # Configuration
    ########################

    # allow simple "logging" of server output
    enable :logging

    configure :development do
      require 'pry'
      register Sinatra::Reloader
      $redis = Redis.new # defaults to 127.0.0.1:6379
    end

    ########################
    # Routes
    ########################

    get('/') do
      render(:erb, :index, { :layout => :default_layout })
    end

    get('/name') do
      @name = $redis.get('name')
      render(:erb, :name, { :layout => :named_layout })
    end

    post('/names') do
      name = params[:name]
      $redis.set('name', name)
      redirect to('/name')
    end

    get('/time') do
      # http://apidock.com/ruby/DateTime/strftime#864-Complete-Formatting-Codes
      @time = Time.now.strftime("%I:%M %p")
      render(:erb, :time, { :layout => :default_layout })
    end

    get('/time.json') do
      content_type 'application/json'
      {time: Time.now}.to_json
    end

  end # Server
end # AppName
