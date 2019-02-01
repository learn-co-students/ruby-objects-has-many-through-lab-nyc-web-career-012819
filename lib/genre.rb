

class Genre

attr_reader :genre, :name, :songs, :artist

@@all = []

def self.all
  @@all
end

def initialize(genre)
  @genre = genre
  @@all << self
end

def name
  self.genre
end

def songs
  Song.all
end

def artists
  Artist.all
end








end
