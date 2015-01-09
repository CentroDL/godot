require 'pry'
require 'redis'
require 'sinatra/base'
require 'sinatra/reloader'

require_relative 'database_helper'
require_relative 'gravatar_helper'
require_relative 'server'

run Mumbler::Server
