module Exercise
  class Server < Sinatra::Base

    configure :development do
      register Sinatra::Reloader
      require 'pry'
    end

    get('/') do
      render(:erb, :index, layout: :default)
    end

    # Bonus
    # Read about JSONP and see if you can retrieve the following
    # from index with JavaScript
    # http://en.wikipedia.org/wiki/JSONP
    get('/data.json') do
      content_type "application/javascript"
      'parseResponse({"rating": "PG-13", "boxOffice": "$70,611,210", "budget": "$45 million"});'
    end

  end
end
