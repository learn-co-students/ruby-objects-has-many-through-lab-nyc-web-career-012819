class Genre
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select { |song| song.genre == self}
  end

  def artists
    Song.all.map do |song|
      if song.genre == self
        song.artist
      end
    end
  end

end
