# config.ru
require 'sinatra/base'
require_relative './server'

# run is a command from Rack
run Hello::Server
