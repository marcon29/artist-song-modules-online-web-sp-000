module Findable

  # tracks all songs
    all = []
    
  # can return all songs
    def all_instances
      all
    end

  # can find a particular artist
    def find_by_name(name)
      all.detect{|a| a.name == name}
    end

end


#######################

# can find a particular artist
#  def find_by_name(name)
#    all.detect{|a| a.name == name}
#  end
