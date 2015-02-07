require 'pg'
require 'ffaker'
require_relative './config.rb'

# This file should contain all the record creation needed to seed the
# database with its default values.
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

pg_conn = PG.connect dbname: 'popcorn_db'

10.times do
  name  = Faker::Name.name
  #=> "Miss Pearlie Buckridge", eg
  email = Faker::Internet.email
  #=> "grayce@ledner.ca", eg
  born  = Faker::Time.date(:year_range => 60, :year_latest => 11)
  #=> "1976-04-09 00:00:00 -0500", eg

  pg_conn.exec_params("INSERT INTO users (name, email, born_on) VALUES ($1, $2, $3)", [name, email, born])
end


