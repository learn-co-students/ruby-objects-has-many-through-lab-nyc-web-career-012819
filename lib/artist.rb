require 'pry'
class Artist
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
    # newSong.genre = genre
  end

  def songs
    Song.all.select { |song| song.artist == self}
  end

  def genres
    Song.all.map do |song|
      if song.artist == self
        song.genre
      end
    end
  end

end
