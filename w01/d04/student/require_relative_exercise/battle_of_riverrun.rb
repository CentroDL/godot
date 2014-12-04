require 'pry'

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
                   THE_FORCES_OF_HOUSE_REED     +
                   THE_FORCES_OF_HOUSE_MARSH   

$stdout.puts("There are #{number_of_lannisters} Lannisters.")
$stdout.puts("There are #{number_of_starks} Starks.")

if number_of_lannisters > number_of_starks
  $stdout.puts("There are more Lannisters than Starks: the Lannisters win!")
else
  $stdout.puts("There are more Starks than Lannisters: the Starks win!")
end