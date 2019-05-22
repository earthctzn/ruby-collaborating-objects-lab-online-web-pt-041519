class MP3Importer
  attr_reader :path
  def initialize(path)
    @path = path
  end
  
  def import(list_of_filenames)
    list_of_filenames.each{ |filename| Song.new_by_filename(filename) }
  end
end