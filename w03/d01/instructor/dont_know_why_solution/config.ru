require 'sinatra/base'      # 1.  What is the purpose of this line?
                            # 2.  What does 'sinatra/base' refer to?
                            # 3.  Where is 'sinatra/base'?

# This line loads the code in a specific file within a Ruby library or Gem.

# `'sinatra/base'` refers to a [file](http://git.io/YPekxA) in the Sinatra
# library that includes the `Base` class and it's composed classes (the classes
# it depends upon).

# Require will look in Ruby's Gem path for libraries that have been downloaded
# using `gem install ...`. You can find the Gem path by running `gem env`, which
# returns on my computer (PJ's work Ubuntu machine):
#  - `/home/pj/.rbenv/versions/2.1.2/lib/ruby/gems/2.1.0`, and
#  - `/home/pj/.gem/ruby/2.1.0`

require_relative './server' # 4.  Why are we using `require_relative`?
                            # 5.  What does './server' refer to?
                            # 6.  What type of path is './server'?

# The file whose code we are loading is local (not a Gem), and so we require it
# relative to the current file (which makes our code more portable).

# The file in the current directory `server.rb`, which holds our `Server` class
# definition.

# We use relative paths with `require_relative`!

run AppName::Server         # 7.  What is `run`?
                            # 8.  What is `AppName::Server`?
                            # 9.  Where did `AppName::Server` come from?
                            # 10. Where did `run` come from?

# `run` is a method... It is difficult to find what it returns or where it is
# defined, so we'll return to that below. It takes as an argument a class.

# `AppName::Server` is a class that inherits from `Sinatra::Base` and holds our
# server's logic.

# We wrote `AppName::Server` (inheriting most of its functionality from Sinatra)
# in the `server.rb` file!

# It doesn't work to use a `binding.pry` in this file, so we have to use Google.
# By inference, this file is run when we use `rackup`, so if we look up "What is
# rackup" on Google, we will see the page:
#
# - https://github.com/rack/rack/wiki/%28tutorial%29-rackup-howto
#
# In this page we see that:
#
# > The config.ru file is treated as if it is the body of the block in:
# > `app = Rack::Builder.new { ... config ... }.to_app`
#
# So `run` is likely defined in Rack::Builder. We can see that the
# [method](http://git.io/J7SpZQ) is defined there, and simply stores the passed
# argument as the instance of @run inside Rack. The comments on this method are
# useful:
#
# > # Takes an argument that is an object that responds to #call and returns a Rack response.
# > # The simplest form of this is a lambda object:
# > #
# > #   run lambda { |env| [200, { "Content-Type" => "text/plain" }, ["OK"]] }
# > #
# > # However this could also be a class:
# > #
# > #   class Heartbeat
# > #     def self.call(env)
# > #      [200, { "Content-Type" => "text/plain" }, ["OK"]]
# > #    end
# > #   end
# > #
# > #   run Heartbeat
#
# Thus we can also infer that `Sinatra::Base` must define a `#call` method that
# we inherit and that connects our library to Rack.
