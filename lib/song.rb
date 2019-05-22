class Song 

  attr_accessor :name, :artist 
  
  def initialize(name)
    @name = name
  end
  
  
  def self.new_by_filename(filename)
    artist_name = filename.split(" - ")[0]
    song_name = filename.split(" - ")[1]
    song = self.new(song_name)
    song.artist_name = artist_name
    song
  end

end