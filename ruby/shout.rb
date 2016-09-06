
# Shout Module
module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yell_happily(words)
    "YYYAAAAYYYY," + words + "!!!" + " :)"
  end
end

# Driver Code

puts Shout.yell_angrily("WTF")

puts Shout.yell_happily("WTF")