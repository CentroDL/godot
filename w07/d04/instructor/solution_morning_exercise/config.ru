require 'sinatra/base'
require 'sinatra/reloader'
require 'json'
require_relative './server'

run Exercise::Server
