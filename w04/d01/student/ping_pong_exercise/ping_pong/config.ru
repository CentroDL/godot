require 'sinatra/base'
require_relative 'game'
require_relative 'server'

run Pgame::Server
