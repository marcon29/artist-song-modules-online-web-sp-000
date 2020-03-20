require 'pry'

class Artist
  extend Memorable
      # (.reset_all) can delete all artists
      # (.count) can return total number of artists
  extend Findable
      # (.find_by_name) can find a particular artist
  include Paramable
      # (.to_param) makes URL out of string

  attr_accessor :name
  attr_reader :songs

# tracks all artists
  @@artists = []

  def initialize
    self.class.all << self
#    @@artists << self
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
end
