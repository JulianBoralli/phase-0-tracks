
# Shout Module Standalone
# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yell_happily(words)
#     "YYYAAAAYYYY," + words + "!!!" + " :)"
#   end
# end


# Shout Module Mixin
module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yell_happily(words)
    "YYYAAAAYYYY," + words + "!!!" + " :)"
  end
end


class Children
	include Shout
end

class Teacher
	include Shout
end

# Driver Code

puts Children.new.yell_angrily("WTF, can't understand anything")

puts Teacher.new.yell_happily("I got a 10")

puts Teacher.new.yell_angrily("WTF, nobody has focus")

puts Teacher.new.yell_happily("the bell is ringing")