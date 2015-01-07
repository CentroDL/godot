# TODO require Redis
require 'redis'
require 'sinatra/base'
require 'sinatra/reloader'
require_relative 'server'

run App::Server
