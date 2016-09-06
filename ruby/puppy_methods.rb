class Puppy

	attr_accessor :name

	# def set_name=(name)
	# 	@name = name
	# end

	# def get_name
	# 	@name
	# end


  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(number)
  	number.times {puts "Woof!"}
  end

  def roll_over
  	puts "*roll over*"
  end

  def dog_years(human_years)
  	dog_years = 7*human_years
  end

  def jump(height)
  	puts "#{@name} jumped #{height} feet!"
  end
end





# Driver Code
spot = Puppy.new

spot.fetch("ball")

spot.speak(3)

spot.roll_over

puts spot.dog_years(10)

spot.name = "Spot"

puts spot.name

spot.jump(5)
