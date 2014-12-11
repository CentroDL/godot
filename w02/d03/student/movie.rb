require 'pry'
require_relative './person.rb'

class Movie

  def initialize(title)
    @title = title
    @director = nil
  end
# //////////////SETTER METHODS///////////
  def set_title=(t)
    @title = t
  end

  def set_director=(d)
    if d == Person
      @director = d
    end
    puts "Director can only be set to a Person object!"
  end
# //////////////GETTER METHODS///////////
  def get_title
    @title
  end

  def get_director
    @director
  end

end




