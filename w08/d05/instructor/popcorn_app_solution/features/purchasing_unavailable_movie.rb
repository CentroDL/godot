require_relative '../db/config'

# A user tries to purchase a movie before it's available

# setup
user = User.create(login: 'piratepete@gmail.com',
                   born_on: 'May 17, 1986',
                   balance: 50)
unavailable_movie = Movie.create(title: 'Jaws 3000',
                                 rating: 'R',
                                 available_on: 'May 01, 3000')

available_movie = Movie.create(title: 'Jaws 1',
                               rating: 'R',
                               available_on: 'May 01, 1976')

user.buy(available_movie)

# testing
puts user.buy(unavailable_movie) # => should return false
puts user.owns?(available_movie) # => should return true
puts user.owns?(unavailable_movie) # => should return false

# teardown
User.destroy_all
Movie.destroy_all
