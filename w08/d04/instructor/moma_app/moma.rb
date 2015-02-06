require 'config.rb'

# 1. Return all Artists
artists = Artist.all
# 1. Return all Paintings
paintings = Painting.all

# 1. Return the artist with an id of 2
artist = Artist.find(2)

# 1. Return the artist with a name of "Vincent Van Gogh"
vince = Artist.find_by(name: "Vincent Van Gogh")

# 1. Return all the artists who are "Spanish"
spaniards = Artist.where({nationality: "Spanish"})

# 1. Return the painting with an id of 1
painting = Painting.find(1)

# 1. Return the painting with a title of "Guernica"
guernica = Painting.find_by({title: "Guernica"})

# 1. Return all the paintings that "Pablo Picasso" painted

pablo = Artist.find_by({name: "Pablo Picasso"})
paintings = pablo.paintings

# 1. Return the artist of "Guernica"
artist = Painting.find_by({title: "Guernica"}).artist

# 1. Change Vincent Van Gogh's nationality to "American"
vince = Artist.find_by({name: "Vincent Van Gogh"})
vince.nationality = "American"
vince.save

# 1. Change "Starry Night" to be one of Pablo Picasso's paintings
starry = Painting.find_by({title: "Starry Night"})
pablo = Artist.find_by({name: "Pablo Picasso"})
pablo.paintings << starry
