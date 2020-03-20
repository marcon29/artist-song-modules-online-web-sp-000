require 'pry'

class Artist
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

# deletes all artists
  def self.reset_all
    self.all.clear
  end

# can return total number of artists
  def self.count
    self.all.count
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

  def to_param
    name.downcase.gsub(' ', '-')
  end
end
