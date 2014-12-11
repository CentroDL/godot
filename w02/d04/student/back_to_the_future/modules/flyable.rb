module Flyable
  def fly_to(location)
    go_to(location)
    "Look at me now, ma! I'm flying to #{location}!"
  end

  def flies?
    true
  end
end
