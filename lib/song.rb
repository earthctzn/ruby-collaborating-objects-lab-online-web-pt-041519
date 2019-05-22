class Song 
  @@all = []
  attr_accessor :name, :artist 
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.new_by_filename
  end

end