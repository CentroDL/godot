#Creating a concert class
class Concert

  attr_accessor :band,:city,:venue,:date

  def initialize(b,c,v,d)
    @band = b
    @city = c
    @venue = v
    @date = d
  end
# //////////CREATING SETTER METHODS//////////////
  # def set_band=(b)
  #   @band = b
  # end

  # def set_city=(c)
  #   @city = c
  # end

  # def set_venue=(t)
  #   @venue = t
  # end

  # def set_date= (d)
  #   @date = d
  # end
#/////////END OF SETTER METHODS///////////////////
# ////////CREATING GETTER METHODS/////////////////
  # def get_band
  #   return @band
  # end

  # def get_city
  #   return @city
  # end

  # def get_venue
  #   return @venue
  # end

  # def get_date
  #   return @date
  # end
# ////////END OF GETTER METHODS///////////////////
end

best_night_of_my_life = Concert.new("Built to Spill", "Chicago","the Metro","May 8th, 2005")
puts("The best night of travis's life was in #{best_night_of_my_life.city}.")

embarrasing_first_concert = Concert.new("Sugar Ray","Milwaukee","Marcus Amphitheter","1988")
puts("Trav went to a #{embarrasing_first_concert.band} concert back in #{embarrasing_first_concert.date}.")
