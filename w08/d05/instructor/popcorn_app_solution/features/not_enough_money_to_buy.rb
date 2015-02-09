require_relative '../db/config'

# A user without enough money can't buy a movie

# setup
user_with_money = User.create(login: 'laxbro@gmail.com',
                              born_on: 'February 2, 1950',
                              balance: 50)

user_without_money = User.create(login: 'potato@gmail.com',
                                 born_on: 'April 2, 1977',
                                 balance: 3)

movie = Movie.create(title: 'Jaws 4',
                     rating: 'R',
                     rental_price: 6.99,
                     purchase_price: 14.99)

user_with_money.buy(movie)
user_without_money.buy(movie)

# testing
puts user_with_money.owns?(movie) # => should return true
puts user_with_money.balance # => should return 35.01
puts user_without_money.owns?(movie) # => should return false
puts user_without_money.balance # => should return 3

# teardown
User.destroy_all
Movie.destroy_all
