require 'active_record'
require_relative 'models/nation.rb'
require_relative 'models/mission.rb'
require_relative 'models/space_craft.rb'
require_relative 'models/space_program.rb'
require_relative 'models/space_traveler.rb'


ActiveRecord::Base.establish_connection(
  adapter:  'postgresql',
  host:     'localhost',
  username: 'Dennis',          # your username
  database: 'data_space_db' # whatever postgres db you want to connect to
)

ActiveRecord::Base.logger = ActiveSupport::Logger.new($stdout)




