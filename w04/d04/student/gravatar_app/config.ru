require 'json'
require 'sinatra/base'
require 'sinatra/reloader'
require 'redis'
require 'pry'
require 'httparty'

require_relative 'grav_helper'
require_relative 'server'

run GravatarApp::Server
