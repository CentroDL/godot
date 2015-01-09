module GravatarApp
  class Server < Sinatra::Base

    helpers GravHelper

    configure :development do
      register Sinatra::Reloader
      $redis = Redis.new
    endc

    get('/') do
      render(:erb, :index, {:layout => :default})
    end

    get('/students') do
      @student_list = $redis.lrange "wdi:students", 0, -1
      @gravatars = @student_list.map do |student|
        generate_gravatar_hash(student)
      end
      render :erb, :students, layout: :default
    end

    get "/students/:email_hash" do
      email = params[:email_hash]
      profile_url = "http://www.gravatar.com/#{email}.json"
      response = HTTParty.get(profile_url)
      @name = response["entry"][0]["name"]["formatted"]
      render :erb, :profile, layout: :default
    end

  end # Server
end # GravatarApp
