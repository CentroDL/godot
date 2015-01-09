require 'json'

module RandomApp
  class Server < Sinatra::Base

    configure :development do
      register Sinatra::Reloader
    end

    get('/') do
      render(:erb, :index, {:layout => :default})
    end

    get('/random/number') do
      content_type 'application/json'
      random_number = (1..10).to_a.sample
      { number: random_number }.to_json
    end

    get('/random/name') do
      @name = ["Bert", "Ernie", "Horatio"].sample
      render(:erb, :name)
    end

    get('/random/name.json') do
      contet_type 'application/json'
      name = ["Bert", "Ernie", "Horatio"].sample
      {name: name}.to_json
    end



  end # Server
end # RandomApp
