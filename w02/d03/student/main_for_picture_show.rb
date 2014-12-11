#Tester File for Picture Show
require 'pry'
require_relative 'person.rb'
require_relative 'movie.rb'

# Instantiated new Movie with the title "jaws" and saved it to flick
flick = Movie.new("Jaws")
# testers for part 2
puts flick.class              #=> Movie < Object
puts flick.is_a? Movie        #=> true
puts flick.title              #=> "Jaws"
puts flick.title.is_a? String #=> true

binding.pry
movie = Movie.new("")

binding.pry
p1 = Person.new


