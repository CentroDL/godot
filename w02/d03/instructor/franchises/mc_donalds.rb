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
    open  = @open_at.gsub("am","").gsub("pm","").gsub(":","").to_i
    if @close_at.include?("pm")
      close = @close_at.gsub("am","").gsub("pm","").gsub(":","").to_i + 1200
    else
      close = @close_at.gsub("am","").gsub("pm","").gsub(":","").to_i
    end
    (open <= time.gsub(":","").to_i) && (time.gsub(":","").to_i <= close)
  end

end
