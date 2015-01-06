require 'redis'
require 'pry'
require 'sinatra/base'
require 'sinatra/reloader'

require_relative 'database_helper'
require_relative 'server'

run CatTinder::Server
