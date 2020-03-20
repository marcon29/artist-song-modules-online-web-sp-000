class Song
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
      # (.reset_all) can delete all songs
      # (.count) can return total number of songs
      # (#initialize)
  extend Findable
      # (.find_by_name) can find a particular song
  include Paramable
      # (.to_param) makes URL out of string

  attr_accessor :name
  attr_reader :artist

# tracks all songs
  @@songs = []

# can return all songs
  def self.all
    @@songs
  end

# can assign an artist instance to an individual song
  def artist=(artist)
    @artist = artist
  end
end
