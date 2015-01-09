module Mumbler

  class Server < Sinatra::Base

    configure :development do
      register Sinatra::Reloader
      $db = Redis.new
    end

    get '/mumbles' do
      ids = $db.lrange "mumbles", 0, -1
      @mumbles = ids.map do |id|
        $db.hgetall "mumble:#{id}"
      end
      # binding.pry
      render :erb, :mumbles, layout: :default
    end

    get '/mumbles/new' do
      render :erb, :new, layout: :default
    end

    get '/mumbles/:id' do

    end


    post '/mumbles' do
      mpost = {}
      mpost["image"] = params["image"]
      mpost["date"] = params["date"]
      mpost["tags"] =  params["tags"]
      mpost["author_email"] = params["email"]
      mpost["author_handle"] =  params["author_handle"]
      mpost["author_thumbnail"] = params["author_thumbnail"]
      mpost["likes"] = 0
      id = $db.incr "mumble_id"

      mpost.each do |field, value|
        $db.hset "mumble:#{id}", field, value
      end

      $db.rpush "mumbles", id
      redirect '/mumbles'
    end

  end#Server

end
