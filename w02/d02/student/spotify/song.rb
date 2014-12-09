class Song

  attr_reader :title, :artist

  def initialize(x, y)
    @title = x
    @artist = y
  end

  def play
    puts "(The sweet vibes of #{self.title} by #{self.artist} waft around the room)"
  end
end
