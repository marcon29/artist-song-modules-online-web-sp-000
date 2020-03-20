module Memorable

  # can delete all songs
  def self.reset_all
    self.all.clear
  end

  # can return total number of songs
  def self.count
    self.all.count
  end

end
