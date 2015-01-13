require 'sinatra/base'
require 'sinatra/reloader'
require 'redis'
require 'pry'

require_relative 'cast'
require_relative 'server'

run TheBachelor::Server
