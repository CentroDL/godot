#Creating a MCDONALDS Class
class McDonalds

  attr_accessor:capacity,:open_time,:closing_time,:yelp_page,:manager
  attr_reader:location,:served,:greeting

  def initialize(l,c,ot,ct,yp,m)
    @location     = l
    @capacity     = c
    @open_time    = ot
    @closing_time = ct
    @yelp_page    = yp
    @manager      = m
    @served       = 0
  end

  @@served = 0
  GREETING= "Welcome to McDonald's, may I take your order?"
# ///////INSTANCE VARIABLES//////////////////
  def order (num,menu_item)
    @served  += num
    @@served += num
    return "#{GREETING}\nHere is your order of #{num} #{menu_item}. Thank you."
  end

  def is_open_at?(time)
    num_time = time.gsub(":",'').to_i
    opens_at = @open_time.gsub(":",'').to_i
    closes_at = @closing_time.gsub(":",'').to_i
    return opens_at<=num_time && num_time<=closes_at
  end

  def has_mc_rib?
    false
  end

# ///////////CLASS VARIABLES/////////////////
  def self.served
    @@served
  end

  def self.mc_rib
    false
  end
end
