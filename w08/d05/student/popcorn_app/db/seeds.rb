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


DB = PG.connect dbname: 'popcorn_db'

def create_user
  email = Faker::Internet.email
  #=> "grayce@ledner.ca", eg
  born  = Faker::Time.date(:year_range => 60, :year_latest => 11)
  #=> "1976-04-09 00:00:00 -0500", eg

  DB.exec_params "INSERT INTO users (email, born_on) VALUES ($1, $2)", [email, born]

  puts "Created #{email} in Users."

end

def create_movie

  #   title           VARCHAR    NOT NULL,
  title = Faker::Movie.title
  #   available_on    DATE       NOT NULL,
  available_on = Faker::Time.date
  #   description     VARCHAR    NOT NULL,
  description = Faker::HipsterIpsum.sentences(5)
  #   rating          varchar    NOT NULL,
  rating = ['G', 'PG', 'PG-13', 'R', 'NC-17'].sample
  #   poster_image    VARCHAR    NOT NULL,
  poster_image = 'http://www.somesite.com/imgs/someimage.jpg'
  #   created_at      timestamp  DEFAULT CURRENT_TIMESTAMP,

  #   updated_at      timestamp  DEFAULT CURRENT_TIMESTAMP,

  #   length          INTERVAL   NOT NULL, --microseconds?
  length = "#{rand(1..3)} hours"

  DB.exec_params "INSERT INTO movies (title, available_on, description, rating, poster_image, length) VALUES ($1, $2, $3, $4, $5, $6)", [title, available_on, description, rating, poster_image, length]

  puts "Created #{title} in MOVIES."
end

def create_genre
  DB.exec_params "INSERT INTO genres (name) VALUES 'comedy';"
  DB.exec_params "INSERT INTO genres (name) VALUES 'horror';"
  DB.exec_params "INSERT INTO genres (name) VALUES 'action';"
end

def create_purchase

end

10.times do

  create_user
  create_movie
  # will these autofill the link table?
  create_purchase
  create_genre

end


