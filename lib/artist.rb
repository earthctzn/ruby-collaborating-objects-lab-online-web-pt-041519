class Artist 
  @@all = []
  @@all_songs = []
  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def add_song(song)
    @songs << song
    @@all_songs << song
    song.artist = self
  end
  
  def songs 
    @@all_songs
  end 
  
  def print_songs
    @@all_songs.each{|w| puts w.name}
  end
  
  def self.find_or_create_by_name(name)
  end
  
end