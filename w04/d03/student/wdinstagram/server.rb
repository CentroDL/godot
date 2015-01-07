module Wdinstagram
  class Server < Sinatra::Base

    ########################
    # Configuration
    ########################

    # allow simple "logging" of server output
    enable :logging

    configure :development do
      register Sinatra::Reloader
      $redis = Redis.new
    end

    ########################
    # Routes
    ########################

    get('/') do
      render(:erb, :index, :layout => :default)
    end

    get '/entries' do
      entry_ids = $redis.lrange "entries", 0, -1
      @entries = entry_ids.map { |id| $redis.hgetall "entries:#{id}" }
      render :erb, :entries, layout: :default
    end

    get '/entries/new' do
      render :erb, :new, layout: :default
    end

    get "/entries/:id" do
      @entry = $redis.hgetall "entries:#{params[:id]}"
      render :erb, :entry, layout: :default
    end

    post '/entries' do
      id = $redis.incr "entry_id"
      $redis.hmset "entries:#{id}", "author", params["author"], "url", params["photo_url"], "date", params["date_taken"]
      $redis.lpush "entries", id
      redirect '/entries'
    end



  end#Server
end
