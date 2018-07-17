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

  def compare(str1, str2)
    return normalize(str1) == normalize(str2)
  end
end
