# Creating a Movie Class
class Movie

  attr_accessor:title

  def initialize (t)
    @title = t
  end

end

flick = Movie.new("Jaws")
puts flick.class              #=> Movie < Object
puts flick.is_a? Movie        #=> true
puts flick.title              #=> "Jaws"
puts flick.title.is_a? String #=> true
