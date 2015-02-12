# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# User.destroy_all
# Movie.destroy_all
# Purchase.destroy_all

User.create([
  {login: "pj@ga.co", born_on: "1990-09-01", balance: 99.99},
  {login: "philco@ga.co", born_on: "1960-09-01", balance: 99.99},
  {login: "trav@ga.co", born_on: "2000-09-01", balance: 99.99},
])

Movie.create([
  {
    title:          "Puppies All Over the World",
    rating:         "R",
    length:         90,
    available_on:   "2015-01-01",
    description:    "Puppies get wild and crazy and fly private jets to exotic locations for pets and capering.",
    poster_image:   "http://101cookingfortwo.101cookingfortwo.netdna-cdn.com/wp-content/uploads/2014/06/IMG_0014b1-640x426.jpg",
    purchase_price: 12.50,
    rental_price:   4.00
  }, {
    title:          "The Decline of Mr. Meow",
    rating:         "PG",
    length:         160,
    available_on:   "2015-01-01",
    description:    "Mr. Meow learns to accept that his age is advancing. A slow, searing portrait of an animal whose time has passed.",
    poster_image:   "http://upload.wikimedia.org/wikipedia/commons/3/32/Tired_20-year-old_cat.jpg",
    purchase_price: 14.99,
    rental_price:   6.00
  }, {
    title:          "Night of the Igauna",
    rating:         "PG-13",
    length:         120,
    available_on:   "2015-01-01",
    description:    "Lusty defrocked minister Lawrence Shannon (Richard Burton) is a tour guide in Mexico. Leading a tourist group from a Baptist women's college, he finds it difficult to avoid acting on his attraction to Charlotte (Sue Lyon), the young niece of the group's leader, Judith Fellowes (Grayson Hall).",
    poster_image:   "http://enroute.aircanada.com/files/medias/Night_of_Iguana_1964_4_credit_is_Photofest.jpg",
    purchase_price: 9.99,
    rental_price:   2.00
  }
])


