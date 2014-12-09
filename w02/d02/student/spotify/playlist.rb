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
    @songs.each { |song| song.play }
  end

end
