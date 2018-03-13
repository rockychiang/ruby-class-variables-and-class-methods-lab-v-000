class Song
  
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count = {}
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@artists << artist if !@@artists.include?(artist)
    @@genres << genre if !@@genres.include?(genre)
    @@count += 1
  end
  
  def count
    @@count
  end
  
  def genres
    @@genres
  end
  
  def artists
    @@artists
  end
  
end