class Song

attr_accessor :artist, :genre, :name
@@song = []
  def initialize(name, artist, genre)
    @genre = genre
    @name = name
    @artist = artist
    @@song << self
  end

  def self.all
    @@song
  end
end
