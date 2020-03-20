require 'pry'

class Song
  extend Memorable
      # (.reset_all) can delete all songs
      # (.count) can return total number of songs
  extend Findable
      # (.find_by_name) can find a particular song
  include Paramable
      # (.to_param) makes URL out of string

  attr_accessor :name
  attr_reader :artist

# tracks all songs
  @@songs = []

  def initialize
    self.all << self
#    @@songs << self
  end

# can return all songs
  def self.all
    @@songs
  end

# can assign  an artist instance to an individual song
  def artist=(artist)
    @artist = artist
  end
end
