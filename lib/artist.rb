require 'pry'


class Artist

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
      song.artist == self
    end
  end

  def new_song(song_name, genre)
    Song.new(song_name, self, genre)
  end

  def genres
    genres = []
    self.songs.map do |songs|
      genres << songs.genre
    end
    genres.uniq
  end

end
