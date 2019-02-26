class Artist
  attr_accessor :name
  @@songs = []
  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def self.songs
    @@songs
  end

  def add_song(song)
    @@songs << self
    @songs << song
    song.artist = self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    @@songs << self
    @songs << song
    song.artist = self
  end
  def self.song_count
    @@songs.length
  end

end
