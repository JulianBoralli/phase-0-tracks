
# Creates a class of vampires to be instantiates
class Vampire
	# Class variable used to store new instance information
	@@vampires = []
	attr_accessor :vampires
	attr_accessor :name , :age , :year , :validate_age, :garlic_bread, :insurance

	
	# # Class method to add new vampire information
	# def self.add_vampire(new_vampire)
	# 	@@vampires << new_vampire
	# end

	# def self.vampires?
	# 	@@vampires.to_s
	# end

end

# def new_vampire
# 	vampire = Vampire.new
# end

def interview (vampire)
	# Ask for name input
	puts "What's your name?"
	vampire.name = gets.chomp

	# Ask for age input
	puts "How old are you?"
	vampire.age = gets.to_i

	# Ask for year born
	puts "Which year were you born?"
	vampire.year = gets.to_i

	# Check if year and age are consistent
	if Time.now.year - vampire.year == vampire.age || Time.now.year - vampire.year == (vampire.age + 1)
		vampire.validate_age = true
		puts "The year you were born and your age match!"
	else
		vampire.validate_age = false
		puts "The year you were born and your age don't match!"
	end	

	while true
		# Ask if he wants garlic bread
		puts "Our company cafeteria serves garlic bread. Should we order some for you? (Yes or No)"
		vampire.garlic_bread = gets.chomp.downcase
		break if vampire.garlic_bread == "yes" || vampire.garlic_bread == "no"
		puts "Please answer yes or no!"
	end

	# Ask if he wants garlic bread
	while true
		puts "Would you like to enroll in the company’s health insurance? (Yes or No)"
		vampire.insurance = gets.chomp.downcase
		break if vampire.insurance == "yes" || vampire.insurance == "no"
		puts "Please answer yes or no!"
	end

	# Prints result
	puts "Thanks #{vampire.name} for telling me you are #{vampire.age} years old, was born in #{vampire.year}."
	puts "You also told said #{vampire.garlic_bread} and #{vampire.insurance} to insurance"

	return vampire
end

# Creates a instance of Vampire class and interviews to fill its data.
# Then it adds the new instance to the @@vampires class variable, which 
# is an array of all the vampire objects create.
# Vampire.add_vampire(interview(new_vampire))

# Prints all the vampires in a string/array format.
# puts Vampire.vampires?

vampire = Vampire.new
Vampire.vampires << interview(vampire)
puts Vampire.vampires.to_s


