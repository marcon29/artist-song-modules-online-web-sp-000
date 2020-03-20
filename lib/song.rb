require 'pry'

class Song
  extend Memorable
      # (.reset_all) can delete all songs
      # (.count) can return total number of songs
  extend Findable
      # (.find_by_name) can find a particular song
  include Paramable
      # (.to_param) each song can lowercase a string and change all spaces to hyphens      # each song can lowercase a string and change all spaces to hyphens

  attr_accessor :name
  attr_reader :artist

# tracks all songs
  @@songs = []

  def initialize
    @@songs << self
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
