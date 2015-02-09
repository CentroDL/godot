require_relative '../db/config'

# A 13 year old user with a balance of $50 tries to rent a Rated-R movie.

# setup
teenager = User.create(login: 'laxbro@gmail.com',
                       born_on: 'January 27, 2002',
                       balance: 50)
rated_r_movie = Movie.create(title: 'Jaws 4',
                             rating: 'R')

# testing
puts teenager.can_view?(rated_r_movie)        # => should return false
puts teenager.rent(rated_r_movie)             # => should return false
puts teenager.rentals.include?(rated_r_movie) # => should return false

# teardown
User.destroy_all
Movie.destroy_all
