module Findable
  # can find a particular artist
    def find_by_name(name)
      all.detect{|a| a.name == name}
    end
end
