require 'active_record'
# require_relative 'models/...'

ActiveRecord::Base.establish_connection(
  adapter:  'postgresql',
  host:     'localhost',
  username: '...',          # your username
  database: 'data_space_db' # whatever postgres db you want to connect to
)

ActiveRecord::Base.logger = ActiveSupport::Logger.new($stdout)
