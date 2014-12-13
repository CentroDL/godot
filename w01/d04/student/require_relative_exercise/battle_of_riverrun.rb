require 'pry'
<<<<<<< HEAD
require_relative './riverlands/house_tully'
require_relative './riverlands/the_twins/house_frey'
require_relative './riverlands/the_neck/house_reed'
require_relative './riverlands/the_neck/house_marsh'
=======
require_relative './riverlands/house_tully.rb'
require_relative 'riverlands/the_neck/house_marsh.rb'
require_relative 'riverlands/the_neck/house_reed.rb'
require_relative 'riverlands/the_twins/house_frey.rb'

>>>>>>> d35bc6cb2e83a0ee4ea5b0136e1ee826c094bec5
require_relative './lannister_forces'
require_relative './stark_forces'


lannisters = 0
starks     = 0

number_of_lannisters = THE_FORCES_OF_HOUSE_LANNISTER +
                       THE_FORCES_OF_HOUSE_CRAKEHALL +
                       THE_FORCES_OF_HOUSE_PAYNE

number_of_starks = THE_FORCES_OF_HOUSE_STARK    +
                   THE_FORCES_OF_HOUSE_UMBER    +
                   THE_FORCES_OF_HOUSE_KARSTARK +
                   THE_FORCES_OF_HOUSE_BOLTON   +
                   THE_FORCES_OF_HOUSE_TULLY    +
                   THE_FORCES_OF_HOUSE_FREY     +
                   THE_FORCES_OF_HOUSE_REED     +
                   THE_FORCES_OF_HOUSE_MARSH

$stdout.puts("There are #{number_of_lannisters} Lannisters.")
$stdout.puts("There are #{number_of_starks} Starks.")

if number_of_lannisters > number_of_starks
  $stdout.puts("There are more Lannisters than Starks: the Lannisters win!")
else
  $stdout.puts("There are more Starks than Lannisters: the Starks win!")
end
<<<<<<< HEAD

=======
>>>>>>> d35bc6cb2e83a0ee4ea5b0136e1ee826c094bec5
