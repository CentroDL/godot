require 'sinatra/base'
require 'uri'

require_relative './data'
require_relative './server'

run FullHouseApp::Server
