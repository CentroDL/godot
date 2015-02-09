require 'ffaker'
require 'pry'
require_relative './config.rb'

# This file should contain all the record creation needed to seed the
# database with its default values.
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Movie.destroy_all
Genre.destroy_all

ratings = Movie::RATING_SCALE.keys

u1 = User.create(
  login: Faker::Internet.email,
  born_on: Faker::Time.date(year_range: 60, year_latest: 11),
  balance: rand(100)
)

u2 = User.create(
  login: Faker::Internet.email,
  born_on: Faker::Time.date(year_range: 60, year_latest: 11),
  balance: rand(100)
)

m1 = Movie.create(
  title: Faker::Movie.title,
  available_on: Faker::Time.date(year_range: 5, year_latest: -1),
  rating: ratings.sample
)

m2 = Movie.create(
  title: Faker::Movie.title,
  available_on: Faker::Time.date(year_range: 5, year_latest: -1),
  rating: ratings.sample
)

m3 = Movie.create(
  title: Faker::Movie.title,
  available_on: Faker::Time.date(year_range: 5, year_latest: -1),
  rating: ratings.sample
)

g1 = Genre.create(name: 'biography')

g2 = Genre.create(name: 'comedy')

g3 = Genre.create(name: 'action')

g4 = Genre.create(name: 'romance')

m1.genres << g1 << g2
m2.genres << g3 << g4
m3.genres << g2 << g4

u1.buy(m1)
u1.rent(m2)

u2.buy(m2)
u2.rent(m1)
