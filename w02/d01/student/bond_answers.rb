require_relative 'bond_data'
require 'colorize'

#puts BOND_DATA


# Combine your knowledge of iteration and arithmetic to determine the cumulative gross of all the Bond films. Save it to a sensibly-named variable.
cumulative_gross = 0

BOND_DATA.each { |movie| cumulative_gross += movie[:gross].delete('$' ',').to_i}#modified this number to be addable

#BOND_DATA.each { |movie| puts movie[:gross].delete("$" ",").to_i}

puts "The cumulative gross of all films is #{cumulative_gross}".colorize(:green)

# Create a new array with the names of the all actors who have ever played Bond, but with no duplicates. (One Roger Moore is more than enough.) Assign it to a sensibly-named variable.
all_bonds = []

# BOND_DATA.each { |movie| all_bonds.push(movie[:actor]).uniq! }

#less verbose but better memory footprint
BOND_DATA.each do |movie|
  if !all_bonds.include?( movie[:actor] )
    all_bonds.push( movie[:actor] )
  end
end


puts all_bonds


# Create a new array of strings from BOND_DATA with the names of al the Bond films. Assign it to a sensibly-named variable.
movie_names = []
BOND_DATA.each { |film| movie_names.push(film[:title])}
puts "Movie Names"
puts movie_names

# Create a new array of hashes of only the bond films released on odd-numbered years. Assign it to a sensibly-named variable.

# Create a variable called worst_grossing_bond. Use all the tools at your disposal (and perhaps one or two you have yet to discover) to iterate through all the films and return the film with the lowest gross. Store the returned film hash in the variable worst_grossing_bond.

# Similarly, create a variable called highest_grossing_bond and use your programming powers to return the highest grossing film hash, storing it to highest_grossing_bond.
