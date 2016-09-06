class Puppy

	attr_accessor :name

	# def set_name=(name)
	# @name = name
	# end

	# def get_name
	# @name
	# end

	def initialize
		print "Initializing new puppy instance ..."
	end
	
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

class Cats

	attr_accessor :name

	def initialize
		puts "Initializing new cats instance ..."
	end 

	def speak(number)
		number.times {puts "Meow!"}
	end

	def chase(animal)
		puts "Chasing #{animal} ..."
	end

end



# Driver Code

# Testing Puppy Class
spot = Puppy.new

spot.fetch("ball")

spot.speak(3)

spot.roll_over

puts spot.dog_years(10)

spot.name = "Spot"

puts spot.name

spot.jump(5)


# Testing Cats Class
cat_array = []

50.times do |count| 
	cat_array << Cats.new
end


cat_array.each do |cat|
	cat.speak(2) 
	cat.chase("dogs")
end