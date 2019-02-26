class Song
  @@all = []
  attr_accessor :artist, :artist_name
  attr_reader :name
  def initialize(name, artist_name=nil)
    @name = name
    @artist = artist
    @artist_name = artist_name
    @@all << self
  end
  def self.all
    @@all
  end

  def name
    @name
  end

  def name=(value)
    @name = value
  end
  def artist_name
    if @artist == nil
      @artist_name = nil
    else
      @artist_name = self.artist.name
    end
    @artist_name
  end
end
