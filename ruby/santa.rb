class Santa

	attr_reader :age , :ethnicity, :reindeer_ranking
	attr_accessor :gender

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@age = 0
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"] 
	end

	# # Gender Setter
	# def gender=(gender)
	# 	@gender = gender
	# end

	# # Gender Getter
	# def gender
	# 	@gender
	# end

	# # Age Getter
	# def age
	# 	@age
	# end

	# # Ethnicity Getter
	# def ethnicity
	# 	@ethnicity
	# end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!" 
	end

	def celebrate_birthday
		@age += 1
	end

	# Demotes a reindeer to the end of the array
	def get_mad_at(reindeer)
		@reindeer_ranking << @reindeer_ranking.delete(reindeer)		
	end

	# Prints information about the instance
	def about
		puts "Gender: #{@gender}"
		puts "Ethnicity: #{@ethnicity}"
		puts "Age: #{@age}"
		p "Reindeer Ranking: #{@reindeer_ranking}"
	end
end


# Driver Code

# Testing one instance
# santa = Santa.new("male", "eskimo")
# santa.speak
# santa.eat_milk_and_cookies("maizena")


# Creating sample arrays for gender and ethinicity
gender = ["male", "female", "other"]
ethnicity = ["Black", "Latino", "Asian", "White"]

# Santas Array
santas = []

# Creating 100 instances of Santa using randon arguments
100.times do |i|
	santas << Santa.new(gender[rand(gender.length)], ethnicity[rand(ethnicity.length)])
	rand(141).times {santas[i].celebrate_birthday}
end

# Prints information about each instance
santas.each do |santa|
	puts "Age is: #{santa.age}"
	puts "Gender is: #{santa.gender}"
	puts "Reassigning gender:"
	santa.gender = gender[rand(gender.length)]
	puts "New gender is: #{santa.gender}"
	puts "Reindeer Ranking: #{santa.reindeer_ranking}"
	reindeer = santa.reindeer_ranking[rand(santa.reindeer_ranking.length)]
	puts "Getting mad at #{reindeer}"
	santa.get_mad_at(reindeer)
	puts "New Reindeer Ranking: #{santa.reindeer_ranking}"
	puts "--------------------------------"
end



