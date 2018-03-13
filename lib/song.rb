class Song
  
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@artists << artist if !@@artists.include?(artist)
    @@genres << artist if !@@genres.include?(artist)
    @@count += 1
  end
  
end