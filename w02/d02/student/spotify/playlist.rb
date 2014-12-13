class Playlist

  attr_reader :title, :songs

  def initialize(x)
    @title = x
    @songs = []
  end

  def add_song(song_to_add)
    self.songs << song_to_add
  end

  def play
    self.songs.each do |song|
      sleep(1)
      song.play
      sleep(1)
    end
  end

end
