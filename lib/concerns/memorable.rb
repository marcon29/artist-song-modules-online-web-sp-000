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

  module InstanceMethods
    def initialize
      self.class.all << self
    end
  end
end
