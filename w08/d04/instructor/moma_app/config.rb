require 'active_record'
require_relative 'artist.rb'
require_relative 'painting.rb'

ActiveRecord::Base.establish_connection(
  adapter:  'postgresql',
  host:     'localhost',
  username: 'philco',  # your username
  database: 'moma_db' # whatever postgres db you want to connect to
)
