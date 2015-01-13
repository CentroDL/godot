module TheBachelor
  class Server < Sinatra::Base

    use Rack::MethodOverride

    configure :development do
      register Sinatra::Reloader
    end

    get('/') do
      render(:erb, :index)
    end

    get('/bachelor') do
      @cast_member = $redis.hgetall("bachelor")
      render(:erb, :cast_member)
    end

    get('/host') do
      @cast_member = $redis.hgetall("host")
      render(:erb, :cast_member)
    end

    get('/bachelorettes') do
      keys = $redis.keys("bachelorettes:*")
      @bachelorettes = keys.map do |key|
        $redis.hgetall(key)
      end
      render(:erb, :bachelorettes)
    end

    get('/bachelorettes/:name') do
      name = params[:name].downcase
      @cast_member = $redis.hgetall("bachelorettes:#{name}")
      render(:erb, :cast_member)
    end

    delete '/bachelorettes/:name' do
      name = params[:name].downcase
      $redis.del("bachelorettes:#{name}")
      redirect('/bachelorettes')
    end
  end
end
