require 'pry'

class Song
  extend Memorable
      # can delete all songs (.reset_all)
      # can return total number of songs (.count)
  extend Findable

  attr_accessor :name
  attr_reader :artist

# tracks all songs
#  @@songs = []

  def initialize
    @@all << self
#    @@songs << self
  end

# can return all songs
#  def self.all
#    @@songs
#  end

# can assign  an artist instance to an individual song
  def artist=(artist)
    @artist = artist
  end

# each song can lowercase a string and change all spaces to hyphens
  def to_param
    name.downcase.gsub(' ', '-')
  end
end
