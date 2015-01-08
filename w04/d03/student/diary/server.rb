module Diary
  class Server < Sinatra::Base

    configure :development do
      register Sinatra::Reloader

      # sets up redis instance
      $redis = Redis.new({
        :host => "127.0.0.1",
        :port => 6379
      })
    end

    get("/") do
      render(:erb, :index)
    end

    get('/entries') do
      @entries = $redis.lrange("entries", 0, -1)
      render(:erb, :entries)
    end

    post '/entries' do
      entry = params["entry_date"] + " " + params["entry_text"]
      $redis.rpush "entries", entry
      redirect '/entries'
    end

    get('/entries/new') do
      render(:erb, :new_entry)
    end

    get '/sketches' do
      @sketches = $redis.lrange "sketches", 0, -1
      render :erb, :sketches
    end

    get '/sketches/new' do
      render :erb, :new_sketch
    end

    post '/sketches' do
      sketch = params["sketch_date"] + "<img src=\"#{params["image_url"]}\">"
      $redis.rpush "sketches", sketch
      redirect "/sketches"
    end


  end
end
