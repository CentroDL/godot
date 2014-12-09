# a Concert class
# upon instantiation, the Concert class's initialize method should take 4 arguments:
# band
# city
# venue
# date
# instantiate a new concert, best_night_of_life, that represents Built to Spill's performance at the Metro in Chicago on May 8th, 2005.
# instantiate a new concert, embarrassing_first_concert, which took place in Milwaukee, Wisconsin in like 1998 at the Marcus Amphitheater. The band? Sugar Ray.

class Concert

  attr_accessor :band, :city, :venue, :date

  def initialize(band, city, venue, date)
    @band = band
    @city = city
    @venue = venue
    @date = date
  end
end

best_night_of_life = Concert.new("Built to Spill", "Chicago", "Metro", "May 8th 2005")
embarrassing_first_concert = Concert.new("Sugar Ray","Milwaukee","Marcus Amphitheater","in like 1998")
