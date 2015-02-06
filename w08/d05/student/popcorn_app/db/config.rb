require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter:  'postgresql',
  host:     'localhost',
  username: 'YOUR_USERNAME',
  database: 'YOUR_DB'
)

# Logging
ActiveRecord::Base.logger = ActiveSupport::Logger.new($stdout)
