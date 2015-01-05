require 'sinatra/base'
require_relative './server'

run PingPong::Server
