# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Venue.destroy_all
Band.destroy_all
Event.destroy_all

Venue.create([
{ name: "The Darkhorse", city: "Boston", state: "MA", is_family_friendly: true }
  ])

Band.create([
  { name: 'Kanye' , genre: 'Clown', has_explicit_lyrics: true }
  ])

Event.create([
{ date: "Feb 12 2015", alcohol_served: false , band_id: 1,venue_id: 1 }
  ])



