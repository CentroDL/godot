module TheDMV
  class Server < Sinatra::Base

    configure :development do
      register Sinatra::Reloader

      # sets up redis instance
      $redis = Redis.new({
        :host => "127.0.0.1",
        :port => 6379
      })
    end

    get('/') do
      render(:erb, :index)
    end

    get '/first_form' do
      render :erb, :first_form
    end

    post '/first_form' do
      id = $redis.incr "user"
      name = params["name"]
      driver_id = params["driver_id"]
      $redis.hmset "users:#{id}", "name", name, "id", driver_id
      redirect '/second_form'
    end

    get '/second_form' do
      render :erb, :second_form
    end

    post '/second_form' do
      id = $redis.get "user"
      dob = params["birthdate"]
      gender = params["gender"]

      $redis.hmset "users:#{id}", "dob", dob, "gender", gender

      redirect '/third_form'
    end

    get '/third_form' do
      id = $redis.get "user"
      @user = $redis.hgetall "users:#{id}"
      render :erb, :third_form
    end

  end
end
