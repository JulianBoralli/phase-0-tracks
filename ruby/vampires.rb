
# Creates a class of vampires to be instantiates
class Vampire
	# Class variable used to store new instance information
	@@vampires = []
	attr_accessor :name , :age , :year , :validate_age, :garlic_bread, :insurance, :allergies, :result

	# Initializes an empty array used to store allergy information
	def initialize
		@allergies = []
	end

	# Class method to add new vampire information to @@vampires array
	def self.add_vampire(new_vampire)
		@@vampires << new_vampire
	end

	# Class method that returns the @@vampires array
	def self.vampires?
		@@vampires
	end

end

# Creates a new instance of the class Vampire.
def new_vampire
	vampire = Vampire.new
end

def interview (vampire)
	# Ask for name input
	puts "What's your name?"
	vampire.name = gets.chomp

	# Ask for age input with number validation
	while true
		puts "How old are you?"
		vampire.age = gets.chomp
		if vampire.age == vampire.age.to_i.to_s
			vampire.age = vampire.age.to_i
			break
		else
			puts "Please provide a valid number."
		end
	end

	# Ask for year input with number validation
	while true
		puts "Which year were you born?"
		vampire.year = gets.chomp
		if vampire.year == vampire.year.to_i.to_s
			vampire.year = vampire.year.to_i
			break
		else
			puts "Please provide a valid number."
		end
	end

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

	# Prompt for allergies
	while true
		puts "Please name, one by one, any allergy you are aware of:"
		allergy = gets.chomp
		break if allergy == "done"
		if allergy == "sunshine"
			vampire.result = "Probably a vampire."
			break
		end
		vampire.allergies << allergy
	end

	return vampire
end

# This method verifies the probability of a person being a vampire and returns result.
def assessment(vampire)
	vampire.result = "Results inconclusive."
	if vampire.validate_age == true && (vampire.garlic_bread == "yes" || vampire.insurance == "yes")
		vampire.result = "Probably not a vampire."
	end
	if vampire.validate_age == false && (vampire.garlic_bread == "no" || vampire.insurance == "no")
		vampire.result = "Probably a vampire."
	end
	if vampire.validate_age == false && (vampire.garlic_bread == "no" && vampire.insurance == "no")
		vampire.result = "Almost certainly a vampire."
	end
	if vampire.name == "Drake Cula" || vampire.name == "Tu Fang"
		vampire.result = "Definitely a vampire."
	end
vampire
end

# This is where the program starts. It prompts the user for quantity of interviews
while true
	puts "How many potencial vampires do you want to interview?"
	quantity = gets.to_i
	break if quantity > 0
	puts "Please provide a valida integer >= 1"
end

# Sets an i counter of interview to 0
i = 0

# Loops through the interview and assessment process i times
while i < quantity do
	puts "Let's start vampire interview number #{i + 1}"

	# Creates a instance of Vampire class and interviews to fill its data.
	vampire = interview(new_vampire)

	# Assess and prints the probability of the person being a vampire and updates vampire variable
	vampire = assessment(vampire)

	# Prints result of interview and asessment
	puts "Thanks #{vampire.name} for telling me you are #{vampire.age} years old and was born in #{vampire.year}."
	puts "You also said #{vampire.garlic_bread} to garlic bread and #{vampire.insurance} to insurance"
	puts "The chance of you being a vampire is: #{vampire.result}"
	puts "These are your allergies: #{vampire.allergies.to_s}"


	# Adds the new instance to the @@vampires class variable, which 
	# is an array of all the vampire objects create.
	Vampire.add_vampire(vampire)

	# Prints all the vampires in a string/array format.
	# puts Vampire.vampires?.to_s

	# Adds to the i counter for the next iteration
	i += 1
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."