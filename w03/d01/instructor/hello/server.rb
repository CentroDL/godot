# server.rb
module Hello
  class Server < Sinatra::Base

    # invoking a method from sinatra base
    # '/' is the path
    # get is also the http method
    # the block is the response

    get('/') do
      # this constructs the response
      status(200)
      headers({"x-hacker" => "hey hacker"})
      body("<h1>Everything is ok!</h1>")
    end

    # another route handler for localhost:3000/kittens
    get('/kittens') do
      status(200)
      headers({})
      body('<p>meow</p><img src="http://media.giphy.com/media/142Y941q45XPdm/giphy.gif" alt="cute kitten">')
    end

  end # closes Server
end # closes module Hello
