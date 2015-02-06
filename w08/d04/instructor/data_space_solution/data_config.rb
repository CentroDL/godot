require 'active_record'
require_relative 'models/nation'
require_relative 'models/mission'
require_relative 'models/space_craft'
require_relative 'models/space_program'
require_relative 'models/space_traveler'

ActiveRecord::Base.establish_connection(
  adapter:  'postgresql',
  host:     'localhost',
  username: 'ga-pj',          # your username
  database: 'data_space_db' # whatever postgres db you want to connect to
)

ActiveRecord::Base.logger = ActiveSupport::Logger.new($stdout)

# deal with ENUMs
ActiveRecord::ConnectionAdapters::PostgreSQLAdapter::OID.alias_type 'genders', 'text'
ActiveRecord::ConnectionAdapters::PostgreSQLAdapter::OID.alias_type 'roles', 'text'

usa = Nation.find(1)

phil = SpaceTraveler.create(
  :name    => 'Phillip Lamplugh',
  :born_on => 'October 12, 1980',
  :role    => 'Science Officer',
  :gender  => 'M',
  :nation  => usa
)

puts usa.thanks
