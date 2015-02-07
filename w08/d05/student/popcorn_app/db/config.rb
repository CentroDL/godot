require 'active_record'
require_relative '../models/user.rb'
require_relative '../models/movie.rb'
require_relative '../models/purchase.rb'
require_relative '../models/movie.rb'

ActiveRecord::Base.establish_connection(
  adapter:  'postgresql',
  host:     'localhost',
  username: 'YOUR_USERNAME',
  database: 'YOUR_DB'
)

# Logging
ActiveRecord::Base.logger = ActiveSupport::Logger.new($stdout)

