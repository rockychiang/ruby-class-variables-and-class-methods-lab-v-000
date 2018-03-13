class Song
  
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count = {}
  @@artist_count = {}
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@artists << artist 
    @@genres << genre
    @@count += 1
  end
  
  def self.count
    @@count
  end
  
  def self.genres
    ugenres = @@genres.sort
    ugenres.each_with_index do |genre, index|
      ugenres.shift if genre == ugenres[index + 1]
    end
    ugenres
  end
  
  def self.artists
    uartists = @@artists.sort
    ugenres.each_with_index do |genre, index|
      ugenres.shift if genre == ugenres[index + 1]
    end
  end
  
  def self.genre_count
    @@genre_count
  end
  
  def self.artist_count
    @@artist_count
  end
  
end