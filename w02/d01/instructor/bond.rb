require 'pry'

bond_films = [
  { title: "Skyfall", year: 2012, actor: "Daniel Craig", gross: "$1,108,561,008" },
  { title: "Thunderball", year: 1965, actor: "Sean Connery", gross: "$1,014,941,117" },
  { title: "Goldfinger", year: 1964, actor: "Sean Connery", gross: "$912,257,512" },
  { title: "Live and Let Die", year: 1973, actor: "Roger Moore", gross: "$825,110,761" },
  { title: "You Only Live Twice", year: 1967, actor: "Sean Connery", gross: "$756,544,419" },
  { title: "The Spy Who Loved Me", year: 1977, actor: "Roger Moore", gross: "$692,713,752" },
  { title: "Casino Royale", year: 2006, actor: "Daniel Craig", gross: "$669,789,482" },
  { title: "Moonraker", year: 1979, actor: "Roger Moore", gross: "$655,872,400" },
  { title: "Diamonds Are Forever", year: 1971, actor: "Sean Connery", gross: "$648,514,469" },
  { title: "Quantum of Solace", year: 2008, actor: "Daniel Craig", gross: "$622,246,378" },
  { title: "From Russia with Love", year: 1963, actor: "Sean Connery", gross: "$576,277,964" },
  { title: "Die Another Day", year: 2002, actor: "Pierce Brosnan", gross: "$543,639,638" },
  { title: "Goldeneye", year: 1995, actor: "Pierce Brosnan", gross: "$529,548,711" },
  { title: "On Her Majesty's Secret Service", year: 1969, actor: "George Lazenby", gross: "$505,899,782" },
  { title: "The World is Not Enough", year: 1999, actor: "Pierce Brosnan", gross: "$491,617,153" },
  { title: "For Your Eyes Only", year: 1981, actor: "Roger Moore", gross: "$486,468,881" },
  { title: "Tomorrow Never Dies", year: 1997, actor: "Pierce Brosnan", gross: "$478,946,402" },
  { title: "The Man with the Golden Gun", year: 1974, actor: "Roger Moore", gross: "$448,249,281" },
  { title: "Dr. No", year: 1962, actor: "Sean Connery", gross: "$440,759,072" },
  { title: "Octopussy", year: 1983, actor: "Roger Moore", gross: "$426,244,352" },
  { title: "The Living Daylights", year: 1987, actor: "Timothy Dalton", gross: "$381,088,866" },
  { title: "A View to a Kill", year: 1985, actor: "Roger Moore", gross: "$321,172,633" },
  { title: "Licence to Kill", year: 1989, actor: "Timothy Dalton", gross: "$285,157,191" }
]

# 1. Combine your knowledge of iteration and arithmetic to determine the total culumative gross
#    of the Bond franchise. Save it to a sensibly-named variable.

total_gross = 0

bond_films.each do |film|
  gross_as_string = film[:gross]
  gross_as_int = gross_as_string.gsub("$", "").gsub(",", "").to_i
  total_gross = total_gross + gross_as_int
end


# 2. Create a new array with the names of the all actors who have ever played Bond, but with no duplicates. (One Roger Moore is more than enough.) Save it to a sensibly-named variable.
bond_actors = bond_films.map { |movie| movie[:actor] }
bond_actors = bond_actors.uniq


# 3. Create a new array with the names of the Bond films.

movie_titles = bond_films.map { |movie| movie[:title] }

# 4. Create a new array `odd_bonds`, of only the bond films released on odd-numbered years.

odd_bonds = bond_films.select { |movie| movie[:year] % 2 != 0 }

# 5. Create a variable called `worst_grossing_bond`. Use all the tools at your disposal (and perhaps one or two you have yet to discover) to iterate through all the films and return the film with the lowest gross. Store the returned film in the variable `worst_grossing_bond`.

# this tells ruby to look through every item in the bond_films array, and sort them by the grosses AS INTEGERS
sorted_by_gross = bond_films.sort_by do |movie|
  gross_as_string = movie[:gross]
  gross_as_int = gross_as_string.gsub("$", "").gsub(",", "").to_i
  gross_as_int
end

worst_grossing_bond = sorted_by_gross[0]

# 6. Similarly, create a variable called `highest_grossing_bond` and use your programming powers to return the highest grossing film, storing it to `highest_grossing_bond`.
highest_grossing_bond = sorted_by_gross[-1]




# 7. Create a new array, `movies_per_actor`, where each value in the array is a hash formatted like so: `{ "Daniel Craig" => 3 }`

movies_per_actor = bond_actors.map do |actor|
  count = bond_films.count { |movie| movie[:actor] == actor }
  count_hash = {}
  count_hash[actor] = count
  count_hash
end

# 8. Use an awesome method to sort the `bond_films` array by year of release, with the earliest films first. Store it in a variable called `sorted_by_release`

sorted_by_release = bond_films.sort_by { |movie| movie[:year] }

# 9. Write a method, `get_gross_for`, that takes a movie title ( a `string`) and the `array` of `BOND_DATA` as inputs and returns the gross of that movie as an `integer`. Use it on several films to ensure that it works as intended.

def get_gross_for(movie_title, array_of_films)
  movie = ""
  array_of_films.each do |film|
    if film[:title] == movie_title
      movie = film
    end
  end

  movie_gross_as_string = movie[:gross]
  movie_gross_as_int = movie_gross_as_string.gsub("$", "").gsub(",", "").to_i
end

skyfall_gross = get_gross_for("Skyfall", bond_films)
