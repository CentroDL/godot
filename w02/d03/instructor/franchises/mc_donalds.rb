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

  def is_open_at?(time)
    open  = convert_time(@open_at)
    close = convert_time(@close_at)
    time  = convert_time(time)

    (open <= time) && (time <= close)
  end

  def convert_time(time)
    if time.include?("pm")
      time.gsub("am","").gsub("pm","").gsub(":","").to_i + 1200
    else
      time.gsub("am","").gsub("pm","").gsub(":","").to_i
    end
  end

end
