require 'active_record'
require_relative '../models/user.rb'
require_relative '../models/movie.rb'
require_relative '../models/genre.rb'
require_relative '../models/purchase.rb'

ActiveRecord::Base.establish_connection(
  adapter:  'postgresql',
  host:     'localhost',
  username: 'YOURUSERNAME',
  database: 'popcorn_app_development'
)

# Logging
# ActiveRecord::Base.logger = ActiveSupport::Logger.new($stdout)
