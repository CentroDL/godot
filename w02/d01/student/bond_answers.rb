require 'pry'
require_relative "./bond_data"

total_movie_gross = 0
BOND_DATA.each do |movie|
  movie_gross = movie[:gross]
  movie_gross_no_symbols = movie_gross.gsub(",",'').gsub("$",'')
  total_movie_gross += movie_gross_no_symbols.to_i
end
# puts("$#{total_movie_gross} is how much money all the bond films made.")

actor_list = []
BOND_DATA.each do |movie|
  actor_list.push(movie[:actor])
  actor_list.uniq!
end
# puts(actor_list)

film_titles = []
BOND_DATA.each do |movie|
  film_titles.push(movie[:title])
end
# puts(film_titles)

bond_hash_array = []
BOND_DATA.each do |movie|
  year_made = movie[:year]
  if( year_made%2 == 1 )
    bond_hash_array.push({
      :title => movie[:title],
      :year => movie[:year],
      :actor => movie[:actor],
      :gross => movie[:gross]
    })
  end
end
# puts(bond_hash_array)
lowest_grossing_movie = 1000000000
worst_grossing_bond = {}
BOND_DATA.each do |movie|
  current_movie_gross = movie[:gross]
  current_movie_gross = current_movie_gross.gsub(",",'').gsub("$",'').to_i
  if current_movie_gross < lowest_grossing_movie
    lowest_grossing_movie = current_movie_gross
    worst_grossing_bond = {
      :title => movie[:title],
      :year => movie[:year],
      :actor => movie[:actor],
      :gross => movie[:gross]
    }
  end
end
# puts(worst_grossing_bond)

largest_grossing_movie = 0
highest_grossing_bond = {}
BOND_DATA.each do |movie|
  curr_movie_gross = movie[:gross]
  curr_movie_gross = curr_movie_gross.gsub(",",'').gsub("$",'').to_i
    # binding.pry
  if curr_movie_gross > largest_grossing_movie
    largest_grossing_movie = curr_movie_gross
    highest_grossing_bond = {
      :title => movie[:title],
      :year => movie[:year],
      :actor => movie[:actor],
      :gross => movie[:gross]
    }
  end
end
# puts(highest_grossing_bond)

# movies_per_actor = []
# BOND_DATA.each do |movie|
#   actor_name = movie[:actor]
#   movies_per_actor.push(actor_name => 1)
#   if(movies_per_actor[])
# end
# puts(movies_per_actor)
save_movie_gross = ""
def get_gross_for(movie_name, array)
  array.each do |movie|
    find_movie = movie[:title]
    if find_movie == movie_name
      puts("#{movie_name} made #{movie[:gross]}")
    end
  end
end

get_gross_for("For Your Eyes Only", BOND_DATA)









