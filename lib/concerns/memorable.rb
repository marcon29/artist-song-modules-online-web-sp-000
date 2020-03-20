module Memorable

  # can delete all songs
  def reset_all
    all.clear
  end

  # can return total number of songs
  def count
    all.count
  end

end
