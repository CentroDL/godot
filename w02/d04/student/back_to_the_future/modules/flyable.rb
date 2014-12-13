module Flyable

  def fly_to(destination)
    self.go_to(destination)
    "Look at me now, ma! I'm flying to #{destination}!"
  end

  def flies?
    return true
  end

end
