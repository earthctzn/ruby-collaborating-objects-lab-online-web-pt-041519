require "pry"
class Artist 
  @@all = []
  
  attr_accessor :name
  attr_reader :songs

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
    song.artist = self
    #binding.pry 
  end
  
  def print_songs
    @songs
  end
  
  def self.find_or_create_by_name(name)
     match = self.all.detect{|x| x.name == name}
    if match != nil
       artist = self.new(name)
    end
    artist
  end
  
end