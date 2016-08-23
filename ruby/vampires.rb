


def interview
# Ask for name input
puts "What's your name?"
name = gets.chomp

# Ask for age input
puts "How old are you?"
age = gets.to_i

# Ask for year born
puts "Which year were you born?"
year = gets.to_i

if Time.now.year - year == age || Time.now.year - year == (age + 1)
	validate_age = true
	puts "The year you were born and your age match!"
else
	validate_age = false
	puts "The year you were born and your age don't match!"
end	

while true
# Ask if he wants garlic bread
puts "Our company cafeteria serves garlic bread. Should we order some for you? (Yes or No)"
garlic_bread = gets.chomp.downcase
break if garlic_bread == "yes" || garlic_bread == "no"
end

while true
# Ask if he wants garlic bread
puts "Would you like to enroll in the company’s health insurance? (Yes or No)"
insurance = gets.chomp.downcase
break if insurance == "yes" || insurance == "no"
end

puts "Thanks #{name} for telling me you are #{age} years old, was born in #{year}."
puts "You also told said #{garlic_bread} and #{insurance} to insurance"


end

interview