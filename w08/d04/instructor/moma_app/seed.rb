require_relative 'config.rb'

a1 = Artist.create({name: "Vincent Van Gogh", nationality: "Dutch"})

a2 = Artist.create({name: "Pablo Picasso", nationality: "Spanish"})

a3 = Artist.new
a3.name = "Katsushika Hokusai"
a3.nationality = "Japanese"
a3.save

p1 = Painting.create({title: "Starry Night"})
p2 = Painting.create({title: "Cafe Terrace at Night"})

a1.paintings << p1 << p2

a2.paintings.create({title: "Guernica"})
a2.paintings.create({title: "The Old Guitarist"})

Painting.create({title: "The Great Wave off Kanagawa", artist_id: a3.id})
Painting.create({title: "Red Fuji", artist_id: a3.id})
