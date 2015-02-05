require 'active_record'
require_relative 'student'
require_relative 'house'
require_relative 'spell'

ActiveRecord::Base.logger = ActiveSupport::Logger.new($stdout)

ActiveRecord::Base.establish_connection(
  adapter:  'postgresql',
  host:     'localhost',
  username: 'Dennis',  # your username
  database: 'hogwarts_app' # whatever postgres db you want to connect to
)



