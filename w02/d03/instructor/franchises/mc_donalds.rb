class McDonalds
  attr_accessor :capacity, :open_at, :close_at, :yelp, :manager
  attr_reader   :location

  def initialize(location, capacity, open_at, close_at, yelp, manager)
    @location = location
    @capacity = capacity
    @open_at = open_at
    @close_at = close_at
    @yelp = yelp
    @manager = manager
  end

end
