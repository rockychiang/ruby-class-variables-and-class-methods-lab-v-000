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
    if !@@artists.include?(artist)
      @@artists << artist 
      self.artist_count[artist] = 1
    @@genres << genre if !@@genres.include?(genre)
    self.genre_count[genre] += 1
    self.artist_count[artist] += 1
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
  
  def genre_count
    @@genre_count
  end
  
  def artist_count
    @@artist_count
  end
  
end