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
    @served = 0
  end

  def is_open_at?(time)
    open  = convert_time(@open_at)
    close = convert_time(@close_at)
    time  = convert_time(time)

    (open <= time) && (time <= close)
  end

  def convert_time(marpdarp)
    if marpdarp.include?("pm")
      marpdarp.gsub("am","").gsub("pm","").gsub(":","").to_i + 1200
    else
      marpdarp.gsub("am","").gsub("pm","").gsub(":","").to_i
    end
  end

  def order(num, menu_item)
    @served += num
    @@served += num
    "Here is your order of #{num} #{menu_item}. Thank you."
  end

  attr_reader :served
  # def served
  #   @served
  # end

  @@served = 0

  def self.served
    @@served
  end

end
