class Genre

  @@all = []

  attr_accessor :name

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    Song.all do |song|
      song.genre == self
    end
  end

  def artists
    songs.map(&:artist)
  end

end
