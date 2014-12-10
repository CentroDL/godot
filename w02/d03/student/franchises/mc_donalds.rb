# Create a file for the McDonalds class (the name is in CamelCase, and the file should be in snake_case), and then define the class inside it. Create the file franchises.rb, load the McDonalds class with require_relative, and then run the following code to make sure it works:

class McDonalds

  attr_accessor :location, :capacity, :open_at, :close_at, :yelp, :manager, :orders

  def initialize(loc,cap,open,close,yelp,mgmt)
    @location = loc
    @capacity = cap
    @open_at = open
    @close_at = close
    @yelp = yelp
    @manager = mgmt
    @orders = 0
  end

  def order(num, item)
    self.orders += num
    "Here is your order of #{num} #{item}#{num>1? 's' : ""}. Thank you."
  end

  def is_open_at?(time)
    # open_at.gsub(":", '').to_i <= time.gsub(":", '').to_i && time.gsub(":", '').to_i <= close_at.gsub(':', '').to_i
    time.gsub(':', '').to_i.between?( open_at.gsub(':', '').to_i, close_at.gsub(':', '').to_i)
  end

  def served
    orders
  end

end
