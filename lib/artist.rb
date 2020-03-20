require 'pry'

class Artist
  extend Memorable
  # can delete all artists (.reset_all)
  # can return total number of artists (.count)

  attr_accessor :name
  attr_reader :songs

# tracks all artists
  @@artists = []

  def initialize
    @@artists << self
    @songs = []
  end

# can find a particular artist
  def self.find_by_name(name)
    @@artists.detect{|a| a.name == name}
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
  def to_param
    name.downcase.gsub(' ', '-')
  end
end
