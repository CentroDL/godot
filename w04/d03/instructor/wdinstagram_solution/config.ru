require 'date'
require 'redis'
require 'sinatra/base'
require 'sinatra/reloader'

# for development
require 'pry'

require_relative 'database_helper'
require_relative 'server'

run Wdinstagram::Server
