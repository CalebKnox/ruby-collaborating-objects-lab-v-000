require 'pry'

class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    @files = Dir.entries(path).delete_if{|file| file.size < 5}
  end

  def import
    files.each {|file| Song.new_by_filename(file)}
  end
end
