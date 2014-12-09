class Concert

  attr_accessor :band, :city, :venue, :date

  def initialize(band, city, venue, date)
    @band = band
    @city = city
    @venue = venue
    @date = date
  end

end

best_night_of_life = Concert.new("Built to Spill", "Chicago", "The Metro", "May 8th, 2005")

puts best_night_of_life.band
puts best_night_of_life.city
puts best_night_of_life.venue
puts best_night_of_life.date

kamari_fav_concert = Concert.new("MIA", "Portland", "The Roseland", "Spring of 2011")

puts kamari_fav_concert.band
puts kamari_fav_concert.city
puts kamari_fav_concert.venue
puts kamari_fav_concert.date

