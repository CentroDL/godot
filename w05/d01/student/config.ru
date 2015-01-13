require 'sinatra/base'
require 'sinatra/reloader'
require 'redis'
require_relative 'diary'
require_relative 'server'


run DearDiary::Server
