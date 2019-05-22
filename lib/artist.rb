require "pry"
class Artist 
  @@all = []
  @@songs = []
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
    @@all_songs << song.name
    song.artist = self
    #binding.pry 
  end
  
  def songs 
    @@all_songs.name
  end 
  
  def print_songs
    @@songs
  end
  
  def self.find_or_create_by_name(name)
    if self.all.include?(name)
      binding.pry
      self.name
    else
       self.new(name)
    end
  end
  
end