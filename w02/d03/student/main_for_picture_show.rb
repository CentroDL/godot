#Tester File for Picture Show
require 'pry'
require_relative 'person.rb'
require_relative 'movie.rb'

# Instantiated new Movie with the title "jaws" and saved it to flick
flick = Movie.new("Jaws")
# testers for part 2
puts flick.class              #=> Movie < Object
puts flick.is_a? Movie        #=> true
puts flick.get_title              #=> "Jaws"
puts flick.get_title.is_a? String #=> true

movie = Movie.new("title")
puts movie.get_director #=> nil
puts movie.set_director = "Richard Ayoade" # >> "Director can only be set to a Person object!"
puts movie.get_director #=> still nil!


