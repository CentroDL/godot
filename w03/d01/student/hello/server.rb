
module Hello
  class Server < Sinatra::Base
     get '/' do
      status(200)
      headers({ "x-hacker" => "hey hacker ;)"})
      body("<h1>Everything is ok!</h1>")
    end
    get '/about' do
      "about page"
    end
    get '/kittens' do
      status(200)
      headers({})
      body('<img src="http://media.giphy.com/media/142Y941q45XPdm/giphy.gif">')
    end
  end
end

# class Hello::Server
#   get '/' do
#     "Hello World"
#   end
# end
