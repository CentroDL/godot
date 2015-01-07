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

    get('/entries/new') do
      render(:erb, :new_entry)
    end

    post('/entries') do
      entry = params["entry_date"] + " " + params["entry_text"]
      $redis.rpush("entries", entry)
      redirect to("/entries")
    end

  end
end
