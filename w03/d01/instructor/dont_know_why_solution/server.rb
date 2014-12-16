module AppName                    # 1.  What is `AppName` and why do we use it?

# `AppName` is a module, and we use it as a namespace for the classes in our
# app, to make sure that they don't conflict (or have namespace collisions)
# with any of the classes in other libraries we may require. For example,
# `Server` is a very common thing, and therefore a very common name -- but not
# `AppName::Server`.

  class Server < Sinatra::Base    # 2.  What is `Server`?
                                  # 3.  What is `Sinatra`?
                                  # 4.  What is `Base`?

  # `Server` is the class we've defined that inherits from `Sinatra::Base`

  # `Sinatra` is a module that namespaces `Base`.

  # `Base` is a top-level [class](http://git.io/GPdBfA) (it inherits from
  # `Object`) that includes Sinatra and Rack mixins. It contains the base
  # functionality of a Sinatra application.

    enable :logging               # 5.  What is `enable`?

    # `enable` is a [method](http://git.io/L8P3tg) defined in `Sinatra::Base` that
    # allows you to set options for your server. It takes as arguments a list of
    # options (symbols), sets the options internally to true, and returns the
    # current list of options.

    get('/') do                   # 6.  What is `get`?
                                  # 7.  What are the three inputs of `get`?

      # `get` is a method to handle HTTP `GET` requests. In Sinatra a route is
      # an HTTP method paired with a URL-matching pattern. Each route is
      # associated with a block
      # http://git.io/x_Reiw Specifically it's a method that calls `route`

      # `get` is being called on `self` (the object, or *context*, it is called
      # on) it takes three arguments `path`, `opts = {}`, `&block`
      # The first arugment is a string representing the path or URL pattern to
      # match and a block that defines the action to run when the path is
      # requested.

      $stderr.puts "We have an error."       # 8.  In Sinatra where does $stderr
                                             #     print to?

      # `$stderr` prints to the terminal where the server process is running,
      # unless the process's output was redirected.

      logger.error "We have an error."       # 9.  What is `logger`?
                                             # 10. What is `error`?
                                             # 11. Where does `logger` print to?
                                             # 12. How is the logger print out
                                             #     different from $stderr?

      # `logger` is a [method](http://git.io/awrXcQ) defined on `Sinatra::Base` that
      # takes no arguments and returns a copy of the request object's `logger`
      # attribute which is an instance of `Logger`
      # http://www.ruby-doc.org/stdlib-2.1.0/libdoc/logger/rdoc/Logger.html
      # .error is a method called on `request.logger`

      # `logger` prints to the terminal but adds a timestamp and formatting,

      logger.info  "Made to: #{request.url}" # 13. What is the difference btwn
                                             #     `logger.error` and
                                             #     `logger.info`?
                                             # 14. What is `request`?
                                             # 15. What does `request`
                                             #     represent?
                                             # 16. What is `url`?

      # `request` is an instance of `Sinatra::Request < Rack::Request`
      # `url` is a method that returns the `base_url` + `fullpath`

      # What is the difference between `logger.error` and `logger.info`?
      # `logger.error` prepends the logged output with `ERROR -- :`
      # `logger.info` prepends the logged output with  `INFO -- :`

      status 200                  # 17. What is `status`?
                                  # 18. What is `status` called on; ie, where
                                  #     are we?
                                  # 19. What does 200 represent?

      # status is being called on `self` or `AppName::Server < Sinatra::Base`
      # It takes 200 as an argument. http://git.io/TN5Lbw
      # `200` is an HTTP status code. 200 is Standard response for successful
      # HTTP requests.

      # Test the below with the two requests:
      #   - curl http://localhost:3000?key=value
      #   - curl http://localhost:3000

      if request.params.length != 0         # 20. What is `params`?
                                            # 21. What does `params` return?
                                            # 22. What does it represent?

        # params is a method that returns @params which is a hash that contains
        # key value pairs of request parameters
        # request parameters include query strings, url patterns in routes, and
        # post data

        body "The request's params were: '#{request.params}'.\n"
                                            # 23. What is `body`?
                                            # 24. What does it represent?

        # body is a method that sets the `response.body` if a value is given
        # otherwise it returns the response.body http://git.io/HK2MJQ

      else
        "Empty request params\n"            # 25. Why don't we call `body` here?

        # The return value of a route block determines at least the response
        # body passed on to the HTTP client
      end
    end
  end # Server
end # AppName
