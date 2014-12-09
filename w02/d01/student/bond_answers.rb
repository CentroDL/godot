require_relative 'bond_data'
require 'colorize'
require 'pry'

#puts BOND_DATA


# Combine your knowledge of iteration and arithmetic to determine the cumulative gross of all the Bond films. Save it to a sensibly-named variable.
cumulative_gross = 0

BOND_DATA.each { |movie| cumulative_gross += movie[:gross].delete('$' ',').to_i}#modified this number to be addable

#BOND_DATA.each { |movie| puts movie[:gross].delete("$" ",").to_i}

puts "The cumulative gross of all films is #{cumulative_gross}".colorize(:green)

# Create a new array with the names of the all actors who have ever played Bond, but with no duplicates. (One Roger Moore is more than enough.) Assign it to a sensibly-named variable.

all_bonds = []

# BOND_DATA.each { |movie| all_bonds.push(movie[:actor]).uniq! }

def unique(data)
  bonds_array = []
  data.each do |bond|
    bonds_array.push(bond[:actor])
  end
  return bonds_array.uniq

end


#less verbose but better memory footprint
BOND_DATA.each do |movie|
  if !all_bonds.include?( movie[:actor] )
    all_bonds.push( movie[:actor] )
  end
end


puts "These are the names of all bonds #{all_bonds.join("\n")}".colorize(:light_blue)


# Create a new array of strings from BOND_DATA with the names of al the Bond films. Assign it to a sensibly-named variable.
movie_names = []
BOND_DATA.each { |film| movie_names.push(film[:title])}
puts "Movie Names \n #{movie_names.join("\n")}".colorize(:red)

# Create a new array of hashes of only the bond films released on odd-numbered years. Assign it to a sensibly-named variable.

odd_yeared = BOND_DATA.select { |film| film[:year].odd? }

puts " ODD YEARED BOND FILMS:\n#{odd_yeared.join("\n")}".colorize(:green)

# Create a variable called worst_grossing_bond. Use all the tools at your disposal (and perhaps one or two you have yet to discover) to iterate through all the films and return the film with the lowest gross. Store the returned film hash in the variable worst_grossing_bond.

worst_grossing_bond = BOND_DATA.sort_by { |film| film[:gross].delete('$' ',').to_i}[0]
puts "The worst grossing bond was #{worst_grossing_bond}".colorize(:blue)

# Similarly, create a variable called highest_grossing_bond and use your programming powers to return the highest grossing film hash, storing it to highest_grossing_bond.

highest_grossing_bond = BOND_DATA.sort_by { |film| film[:gross].delete('$' ',').to_i}.last
puts "The highest grossing bond was #{highest_grossing_bond}".colorize(:red)
#binding.pry

# Create a new array, movies_per_actor, where each value in the array is a hash where the key is the Bond actor's name and the value is their total number of films. For example { "Daniel Craig" => 3 }
def get_bond_count(name)
  count = 0
  BOND_DATA.each do |film|
    if film[:actor] == name
      count += 1
    end
  end
  return count
end
movies_per_actor = []
all_bonds.each { |bond| movies_per_actor.push({ bond => 0})}
movies_per_actor.each { |actor_hash| actor_hash[actor_hash.keys[0]] = get_bond_count(actor_hash.keys[0]) }
puts movies_per_actor

# binding.pry

# Sort the BOND_DATA array by year of release, with the earliest films first. Store it in a variable called sorted_by_release
sorted_by_release = BOND_DATA.sort_by { |film| film[:year]}
puts sorted_by_release.join("\n").colorize(:light_blue)

# Write a method, get_gross_for, that takes a movie title ( a string) and the array of BOND_DATA as inputs and returns the gross of that movie as an integer. Use it on several films to ensure that it works as intended.
def get_gross_for(title, array)
  return_hash = array.select { |movie| movie[:title] == title }
  return_hash[0][:gross].delete("$" ",").to_i
end

puts get_gross_for("Skyfall", BOND_DATA)
puts get_gross_for("Goldeneye", BOND_DATA)
puts get_gross_for("Goldfinger", BOND_DATA)












