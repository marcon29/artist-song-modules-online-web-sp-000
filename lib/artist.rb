require 'pry'

class Artist
  extend Memorable
      # can delete all songs (.reset_all)
      # can return total number of songs (.count)
  extend Findable
      # can find a particular artist (find_by_name)
  include Paramable

  attr_accessor :name
  attr_reader :songs

# tracks all artists
  @@artists = []

  def initialize
    @@artists << self
    @songs = []
  end

# can return all artists
  def self.all
    @@artists
  end

# artist instance can add itself as artist to an individual song and track it
  def add_song(song)
    @songs << song
    song.artist = self
  end

# artist instance can add itself as artist to multiple songs and track them
  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

# each artist can lowercase a string and change all spaces to hyphens
#  def to_param
#    name.downcase.gsub(' ', '-')
#  end
end
