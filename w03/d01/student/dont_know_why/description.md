## Part 1

```ruby
module AppName                    # 1.  What is `AppName` and why do we use it?
  class Server < Sinatra::Base    # 2.  What is `Server`?
                                  # 3.  What is `Sinatra`?
                                  # 4.  What is `Base`?

    enable :logging               # 5.  What is `enable`?
    get('/') do                   # 6.  What is `get`?
                                  # 7.  What are the three inputs of `get`?

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

      status 200                  # 17. What is `status`?
                                  # 18. What is `status` called on; ie, where
                                  #     are we?
                                  # 19. What does 200 represent?

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
