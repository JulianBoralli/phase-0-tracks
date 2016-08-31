# Phase 0 - Assignment 5.5 - Spy Name
# Swapping the first and last name.
# Changing all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou', 
# and all of the consonants (everything else besides the vowels) 
# to the next consonant in the alphabet. So 'a' would become 'e', 'u' would become 'a', and 'd' would become 'f'.

# Pseudocode
# 1 - Ask the user for his real name and downcase it.
# 2 - Split First and Last name
# 3 - Store each name in a different variable
# 4 - Interate through each name, changing vowels for next vowels and consonants for next consonants
# 	4a - Grab one character and check if it is a vowel or consonant
# 	4b - If it is a vowel find the next vowel and substitute  the initial one for it
# 	4c - If it is a consonant find the next consonant and substitute the initial one for it
# 5 - Print new spy name to the user


#Spy Method
# Takes a string enumerator as a parameter and iterates throught it
# using map. For each character, the case statement matches a special case.
# On the else part, the character is checked with a Regex, so as not to gerate a 
# vowel from a consonant.
def spy(name)
  name.map do |c|
		case c 
		when "a"
			"e"
		when "e"
			"i"
		when "i"
			"o"
		when "o"
			"u"
		when "u"
			"a"
		when "z"
			"b"
		when " "
			" "
		else
			/[aeiou]/ === c.next ? c.next.next : c.next
		end
	end
end


# Driver Code

# Welcomes the user
puts "Hello my dear spy, ready for your next mission?"

# Creates an empty array of spy names
spy_names = []

loop do
	# Grab name from user
	puts "Please write both a first and last name: (or \"quit\" to exit)"
	# Gets user input and takes the return character out. Also downcases it.
	name = gets.chomp.downcase
	# Exits the program if the user typed quit
	break if name == "quit"
	# Assigns a string enumerator to the variable name_enum
	name_enum = name.each_char
	
	#This line of code assigns a hash with real name and spy name to the
	# spy_names array. The import part of this code is the call for
	# the spy method, sending the string enumerator as an argument.
	# Since the method returns characters in an array, join will rebuild the string
	# followed by split to separate first and last name into a new array.
	spy_names << {real_name: name.split, spy_name: spy(name_enum).join.split}
end

# Check to see if any names were given
if !spy_names.empty?
# Prints real name and the spy names to the screen with inverted first and last name
	spy_names.each do |hash|
		# The if clause checks to see if there is an actual name and not nil value
		# If the user just pressed enter without writing anything the value would be nil
		if hash[:real_name][0] != nil
			puts "Spy #{hash[:real_name][0].capitalize} #{hash[:real_name][1].capitalize} is #{hash[:spy_name][1].capitalize} #{hash[:spy_name][0].capitalize}."
		end
	end
	# Ends the program with a message if user information was added
	puts "Have a great mission, I'll see u soon!"
else
	# Ends the program with a message if no user information was added
	puts "Come back when you are ready for your mission!"
end








