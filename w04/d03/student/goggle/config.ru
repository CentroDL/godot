require 'sinatra/base'
require 'sinatra/reloader'
require 'pry'

require_relative 'goggle_cache'
require_relative 'server'

run Goggle::Server
