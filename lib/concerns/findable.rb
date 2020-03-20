module Findable




  # can find a particular artist
    def find_by_name(name)
      all.detect{|a| a.name == name}
    end

  # can find a particular song
  #  def self.find_by_name(name)
  #    @@songs.detect{|a| a.name == name}
  #  end

end
