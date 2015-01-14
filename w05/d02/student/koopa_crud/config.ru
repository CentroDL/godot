require 'redis'
require 'sinatra/base'
require 'sinatra/reloader'
require_relative 'server'


run Koopa::Server
