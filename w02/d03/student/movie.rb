# Creating a Movie Class
require 'pry'

class Movie

  attr_accessor:title,:director

  def initialize (title, director="")
    @title = title
    @director = director
  end

  def director
    if @director == Person
      @director
    else
      puts "Director can only be set to a Person object!"
    end
  end

end

