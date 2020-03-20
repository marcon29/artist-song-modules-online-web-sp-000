module Memorable
  module ClassMethods
    # can delete all songs
    def reset_all
      all.clear
    end
    
    # can return total number of songs
    def count
      all.count
    end
  end

  module ClassMethods
    def initialize
      self.class.all << self
      # code for artist class @songs = [] ???
    end

    
  end
  
end
