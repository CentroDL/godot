require 'sinatra/base'

require_relative 'coin'
require_relative 'server'

# run our server!
run Parlour::Server
