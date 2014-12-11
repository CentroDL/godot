#corny.. sorry           __________          ________
#                      /__         \        /_    __/\
#                      \_/   /\    \        \/   /\_\/
#                       /   / /    /\       /   / /
#                      /   / /    / /      /   / /
#                     /   / /    / /      /   / /   ____
#                  _ /   /_/    / /___  _/   /_/___/   /\ ___
#                 /____________/ //__/\/______________/ //__/\
#                 \____________\/ \__\/\______________\/ \__\/
require 'pry'
require_relative 'person'
require_relative 'score'
require_relative 'script'

class Movie
  attr_accessor :title, :script
  attr_reader :director

  def initialize(t)
    @title = t
  end

  #Movie#director=
  def director=(d)
    d.is_a? Person ? @director = d : (raise ArgumentError, "INSOLENT MORTAL! Director can only be set to a Person object!")
    #for the second result i'd just return the string its just an output statement so we can visually see the result
  end#director=

  def to_novelization
    "#{@title}! by #{@script.writer}. #{script.plot} "
  end

end#Movie

flickr = Movie.new("Back to the Future")


# flick.class              #=> Movie < Object
# flick.is_a? Movie        #=> true
# flick.title              #=> "Jaws"
# flick.title.is_a? String #=> true

# binding.pry
# #Imagine we could call Movie#director
# movie = Movie.new("Inception")
# movie.director #=> nil
# movie.director=("Richard Ayoade") # >> "Director can only be set to a Person object!"
# movie.director #=> still nil!
# #Oh come on! A Person object?!
# p1 = Person.new

# movie.director = p1
# movie.director.is_a? Person #=> true


# s = Score.new(0.45)
# s.to_s #=> "45%"
# s.reviewed_by.class #=> NilClass < Object
# flickr.script.class        #=> Script < Object
# flickr.script.writer.class #=> Person < Object
# flickr.script.plot.class   #=> String < Object
script = Script.new
script.writer = "Robert Zemeckis"
script.plot   = "A young man is accidentally sent 30 years into the past in a time-traveling DeLorean invented by his friend, Dr. Emmett Brown, and must make sure his high-school-age parents unite in order to save his own existence."
flickr.script = script
flickr.to_novelization.is_a? String #=> true
flickr.to_novelization
binding.pry
