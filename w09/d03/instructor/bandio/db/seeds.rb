# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).


Venue.create(name: "The Metro", city: "Chicago", state: "IL", family_friendly: false)
Venue.create(name: "Black Cat", city: "Washington", state: "District of Columbia", family_friendly: true)
Venue.create(name: "The Roundhouse", city: "Salt Lake City", state: "UT", family_friendly: false)
Venue.create(name: "Marcus Amphitheater", city: "Milwaukee", state: "WI", family_friendly: true)

Band.create(name: "Paul Simon", genre: "Pure Awesome", explicit_lyrics: false)
Band.create(name: "Build to Spill", genre: "Indie", explicit_lyrics: false)
Band.create(name: "Kanye West", genre: "Hip-Hop", explicit_lyrics: true)
Band.create(name: "Led Zeppelin", genre: "Pure Awesome", explicit_lyrics: false)
Band.create(name: "Eminem", genre: "Hip-Hop", explicit_lyrics: true)
