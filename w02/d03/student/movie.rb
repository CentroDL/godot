     #        __________           ________
     #      /__         \         /_    __/\
     #      \_/   /\    \         /   /\_\/
     #       /   / /    /\       /   / /
     #      /   / /    / /      /   / /
     #     /   / /    / /      /   / /   ____
     #  _ /   /_/    / /___  _/   /_/___/   /\ ___
     # /____________/ //__/\/______________/ //__/\
     # \____________\/ \__\/\______________\/ \__\/
require 'pry'
require_relative 'person'

class Movie
  attr_accessor :title
  attr_reader :director

  def initialize(t)
    @title = t
  end

  #Movie#director
  def director=(d)

    if d.class == Person
      @director = d
    else
      "Director can only be set to a Person object!" #i put puts to see this line and it worked
    end

  end#director=

end#Movie

flick = Movie.new("Jaws")


# flick.class              #=> Movie < Object
# flick.is_a? Movie        #=> true
# flick.title              #=> "Jaws"
# flick.title.is_a? String #=> true

#Imagine we could call Movie#director
movie = Movie.new("Inception")
movie.director #=> nil
binding.pry
movie.director=("Richard Ayoade") # >> "Director can only be set to a Person object!"
movie.director #=> still nil!
#Oh come on! A Person object?!

