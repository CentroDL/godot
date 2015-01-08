require 'redis'
require 'json'
require 'httparty'
require 'sinatra/base'
require 'sinatra/reloader'

require_relative 'server'

run Mumbler::Server
