require 'json'
require 'redis'
require 'httparty'
require 'pry'
require 'sinatra/base'
require 'sinatra/reloader'

require_relative 'server'

run GravatarApp::Server
