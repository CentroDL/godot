require_relative '../db/config'
# A user purchases a movie and then tries to purchase it again.

# setup
user = User.create(login: 'elb@gmail.com',
                   born_on: 'March 27, 1997',
                   balance: 50)
movie = Movie.create(title: 'Snow Fall 7',
                     rating: 'PG-13',
                     purchase_price: 9.99)
user.buy(movie)

# testing
puts user.balance              # => should be 41.01
puts user.buy(movie)           # => should return false
puts user.balance              # => should still be 41.01

# teardown
User.destroy_all
Movie.destroy_all
