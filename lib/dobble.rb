require "dobble/version"

module Dobble
  def normalize(str)
    nstr = str.downcase
    nstr.gsub!(/[:~—,.]/, ' ')
    nstr.gsub!(/&/,' ')
    nstr.gsub!(/[‘'’™`]/,'')
    nstr.gsub!(/–/,' ')
    nstr.gsub!(/-/,' ')
    nstr = nstr.squeeze(" ").strip
    return nstr
  end
end
