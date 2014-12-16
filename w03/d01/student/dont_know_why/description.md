## Part 1

```ruby
module AppName                    # 1.  What is `AppName` and why do we use it?
  class Server < Sinatra::Base    # 2.  What is `Server`?
                                  # 3.  What is `Sinatra`?
                                  # 4.  What is `Base`?
# 1. AppName is a module that namespaces our Server
# 2. Server is the class that extends the Sinatra::Base module for use
# 3. Sinatra is a namespace that holds a bunch of server functionality including the Base class we're inheriting our Server behaviors from
# 4. Base is I guess a module that holds the basic functionality, the minimum for a basic server


    enable :logging               # 5.  What is `enable`?
    get('/') do                   # 6.  What is `get`?
                                  # 7.  What are the three inputs of `get`?
# 5. 'enable' is a command that sets the list of settings that preceed it to true
# 6. get is a method that takes a http route as its parameter and handles corresponding get requests
# 7. the three inputs are the route, the block, and a params hash?
      $stderr.puts "We have an error."       # 8.  In Sinatra where does $stderr
                                             #     print to?
      logger.error "We have an error."       # 9.  What is `logger`?
                                             # 10. What is `error`?
                                             # 11. Where does `logger` print to?
                                             # 12. How is the logger print out
                                             #     different from $stderr?
      logger.info  "Made to: #{request.url}" # 13. What is the difference btwn
                                             #     `logger.error` and
                                             #     `logger.info`?
                                             # 14. What is `request`?
                                             # 15. What does `request`
                                             #     represent?
                                             # 16. What is `url`?
# 8. stderr will point wherever logger points to, else to its default log file
# 9. logger is an object that writes messages to specific logs
# 10. error is a method that logs messages to the error stream or file
# 11. logger prints to the specified error log
# 12. stderr will output to the default ruby error stream, whereas logger can be aimed to specific places
# 13. logger.error logs to the error log, logger.info logs to the default event log
# 14. in this context, it is the http request route
# 15. the specific url
# 16. uniform resourse locator, or web address
      status 200                  # 17. What is `status`?
                                  # 18. What is `status` called on; ie, where
                                  #     are we?
                                  # 19. What does 200 represent?
# 17. status is an HTTP response code
# 18. it is called inside the get method
# 19. 200 means success
      # Test the below with the two requests:
      #   - curl http://localhost:3000?key=value
      #   - curl http://localhost:3000

      if request.params.length != 0         # 20. What is `params`?
                                            # 21. What does `params` return?
                                            # 22. What does it represent?
        body "The request's params were: '#{request.params}'.\n"
                                            # 23. What is `body`?
                                            # 24. What does it represent?
      else
        "Empty request params\n"            # 25. Why don't we call `body` here?
      end
    end
  end
end
```
# 20. params is a hash
# 21. it returns a hash
# 22. it represents a mapping
# 23. returns a body object the the browser can handle
# 24. an html body tag
# 25. if there's no params we don't have data to deal with so we give an error message

1.
1.
1.
1.
1.
1.
1.
1.
1.
1.
1.
1.
1.
1.
1.
1.
1.
1.
1.
1.
1.
1.
1.
1.
1.

## Part 2

```ruby
require 'sinatra/base'      # 1.  What is the purpose of this line?
                            # 2.  What does 'sinatra/base' refer to?
                            # 3.  Where is 'sinatra/base'?
require_relative './server' # 4.  Why are we using `require_relative`?
                            # 5.  What does './server' refer to?
                            # 6.  What type of path is './server'?
run AppName::Server         # 7.  What is `run`?
                            # 8.  What is `AppName::Server`?
                            # 9.  Where did `AppName::Server` come from?
                            # 10. Where did `run` come from?
```

#1. loads the base code in the sinatra gem
#2. sinatra/base refers to the specific folder in the sinatra gem
#3. wherever the other ruby gems are
#4. to reference another ruby file
#5. its the path to the file we need
#6. relative path
#7. run is a method that runs the server
#8. the Server class in the Appname module
#9. from the server.rb file
#10. run came from the sinatra base gem

## Bonus

```bash
rackup -p 3000 # 1.  What is `rackup`?
               # 2.  What does the -p 3000 mean?
               # 3.  Are there other options than -p?
               # 4.  Where does `rackup` come from (what Gem does it come with)?
               # 5.  What is the code for `rackup`?
               #     (hint: `sudo find ~ -iname "rackup"`)
               # 6.  What does `#!/usr/bin/env ruby` mean?
```

1.
1.
1.
1.
1.
1.
