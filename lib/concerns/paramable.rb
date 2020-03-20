module Paramable
  # each song can lowercase a string and change all spaces to hyphens
    def to_param
      name.downcase.gsub(' ', '-')
    end
end
