require "pry"
class Artist 
  @@all = []
  @@songs = []
  attr_accessor :name

  def initialize(name)
    @name = name
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def add_song(song)
    @@songs << song
    song.artist = self
    #binding.pry 
  end
  
  def songs 
    @@songs
  end 
  
  def print_songs
    @@songs
  end
  
  def self.find_or_create_by_name(name)
    if self.all.detect(name)
      #binding.pry
      sel
    else
       self.new(name)
    end
  end
  
end