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

    get('/first_form') do
      render(:erb, :first_form)
    end

    post('/first_form') do
      $redis.hmset("user", "name", params["name"], "license_id", params["license_id"])
      redirect "/second_form"
    end

    get("/second_form") do
      render(:erb, :second_form)
    end

    post("/second_form") do
      $redis.hmset("user", "dob", params["dob"], "sex", params["sex"])
      redirect '/third_form'
    end

    get("/third_form") do
      render(:erb, :third_form)
    end

  end
end
