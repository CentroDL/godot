require 'redis'
require 'sinatra/base'
require 'sinatra/reloader'
require 'pry'

require_relative 'server'

run Diary::Server
