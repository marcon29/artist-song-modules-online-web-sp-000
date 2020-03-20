require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist

# tracks all songs
  @@songs = []

  def initialize
    @@songs << self
  end

# can find a particular song
  def self.find_by_name(name)
    @@songs.detect{|a| a.name == name}
  end

# can return all songs
  def self.all
    @@songs
  end

# can delete all songs
  def self.reset_all
    self.all.clear
  end

# can return total number of songs
  def self.count
    self.all.count
  end

# can assign  an artist instance to an individual song
  def artist=(artist)
    @artist = artist
  end

# each song can lowercase a string and change all spaces to hyphens
  def to_param
    name.downcase.gsub(' ', '-')
  end
end
