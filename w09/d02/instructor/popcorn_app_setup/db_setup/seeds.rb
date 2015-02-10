require 'ffaker'
require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter:  'postgresql',
  host:     'localhost',
  username: 'pj',
  database: 'popcorn_app_development'
)

# Logging
# ActiveRecord::Base.logger = ActiveSupport::Logger.new($stdout)

class User < ActiveRecord::Base; end
User.destroy_all

4.times do
  User.create(
    login:   Faker::Internet.email,
    born_on: Faker::Time.date(year_range: 60, year_latest: 11),
    balance: rand(100)
  )
end
