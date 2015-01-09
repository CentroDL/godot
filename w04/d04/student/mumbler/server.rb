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
      @post = $db.hgetall "mumble:#{params[:id]}"
      render :erb, :mumble, layout: :default
    end


    post '/mumbles' do
      params["date"]= Time.new.strftime("%Y-%m-%d") if params["date"]== ""
      params["author_handle"] = "anonymous" if params["author_handle"] == ""
      params["author_thumbnail"] = "http://goo.gl/KQUfGE" if params["author_thumbnail"] == ""
      params["likes"] = 0
      id = $db.incr "mumble_id"
      # binding.pry
      params.each do |field, value|
        $db.hset "mumble:#{id}", field, value
      end

      $db.rpush "mumbles", id
      redirect "/mumbles/#{id}"
    end

  end#Server

end
