require 'pry'


class Genre

  attr_accessor :name


  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end




  ##### Class Methods #####

  def self.all
    @@all
  end
  ##### Instance Methods #####

  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end

  def artists
    artists = []
    self.songs.map do |songs|
      artists << songs.artist
    end
    artists.uniq
  end

end
