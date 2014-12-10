class McDonalds
  attr_accessor :capacity, :open_at, :close_at, :manager
  attr_reader   :location, :yelp, :served

  @@served = 0
  @@mc_rib = false
  GREETING = "Welcome to McDonalds, may I take your order?"

  def self.served
    @@served # ||= 0
  end

  # def served
  #   @served
  # end

  def self.mc_rib
    @@mc_rib
  end

  def self.toggle_mc_rib
    @@mc_rib = !@@mc_rib
  end

  def initialize(location, capacity, open_at, close_at, yelp, manager)
    @location = location
    @capacity = capacity
    @open_at  = open_at
    @close_at = close_at
    @yelp     = yelp
    @manager  = manager
    @served   = 0
  end

  def is_open_at?(time)
    open  = convert(open_at)
    close = convert(close_at)
    time  = convert(time)
    (open..close).cover?(time)
  end

  def order(number, item)
    @served  += number
    @@served += number
    "#{GREETING}\nHere is your order of #{number} #{item}. Thank you."
  end

  def has_mc_rib?
    @@mc_rib
  end

  def convert(time)
    time.gsub(":","").to_i
  end
end
