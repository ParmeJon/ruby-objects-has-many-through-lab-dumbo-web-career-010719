class Genre

@@genres = []
attr_accessor :name

  def initialize(name)
    @name = name
    @@genres << self
  end

  def self.all
    @@genres
  end

  def songs
    Song.all.select do |ele|
      ele.genre == self
    end
  end

  def artists
    self.songs.map do |ele|
        ele.artist
    end
  end

end
