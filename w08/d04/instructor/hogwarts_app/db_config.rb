require 'active_record'
require_relative 'house.rb'
require_relative 'student.rb'
require_relative 'spell.rb'

ActiveRecord::Base.establish_connection(
  adapter:  'postgresql',
  host:     'localhost',
  username: 'philco',  # your username
  database: 'hogwarts_app' # whatever postgres db you want to connect to
)

ActiveRecord::Base.logger = ActiveSupport::Logger.new($stdout)
