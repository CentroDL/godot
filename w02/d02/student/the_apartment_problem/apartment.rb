#Creates the Apartment Class
class Apartment

  attr_accessor :unit,:num_beds,:num_baths,:tenants

  def initialize(u,nbe,nba)
    @unit      = u
    @num_beds  = nbe
    @num_baths = nba
    @tenants   = []
  end

  def apt_price
    return (@num_beds*1000) + (@num_baths*500)
  end

  def studio?
    if @num_beds <= 1
      return true
    else
      return false
    end
  end

  def move_in (tenant)
    if self.tenants.size < self.num_beds
      self.tenants << tenant
    else
      "We're full! #{tenant.full_name} can't move in!"
    end
  end

  def empty?
    if self.tenants.size == 0
      return true
    else
      return false
    end
  end

  def full?
    if self.tenants.size < self.num_beds
      puts("There is still some room")
      return false
    else
      return true
    end
  end

end
