# Assignment 5.2 - Phase 0 - Decor/Hash
# Prompt the designer/user for all of this information.
# Convert any user input to the appropriate data type.
# Print the hash back out to the screen when the designer has answered all of the questions.
# Give the user the opportunity to update a key (no need to loop, once is fine). After all, sometimes users make mistakes! If the designer says "none", skip it. But if the designer enters "decor_theme" (for example), your program should ask for a new value and update the :decor_theme key. (Hint: Strings have methods that will turn them into symbols, which would be quite handy here.) You can assume the user will correctly input a key that exists in your hash -- no need to handle user errors.
# Print the latest version of the hash, and exit the program.

# Pseudocode

# 1 - Create an empty collection object to store data (hash)
# 2 - Prompt the user for name and store information in the hash
# 3 - Prompt the user for age and store information in the hash
# 4 - Prompt the user for number of kids and store information in the hash
# 5 - Prompt the user for decor_theme and store information in the hash
# 6 - Prompt the user for open_space and store information in the hash
# 7 - Prompt the user for favorite_color and store information in the hash
# 8 - Print all the information on the screen and ask if the user wants to update any information
# 9 - If yes, prompt for information and update hash. Then thank the user and exit the program
# 10 - If not, thank the user and exit the program

# Prompts the new client for information and returns a hash
def new_client

	# Create empty hash to store information
	# Sets an initial false value for open space query
	# Creates empty array to store favorite_colors
	new_client = {open_space: false , favorite_colors: []}

	# Prompts for information and uptades the hash
	puts "What's the client's full name?"
	new_client[:name] = gets.chomp.capitalize

	# Prompts for information and uptades the hash
	puts "What's the client's age?"
	new_client[:age] = gets.chomp.to_i

	# Prompts for information and uptades the hash
	puts "How many kids does the client have?"
	new_client[:number_kids] = gets.chomp.to_i

	# Prompts for information and uptades the hash
	puts "Which decor theme best suits the client?"
	new_client[:decor_theme] = gets.chomp.downcase

	# Prompts for information and uptades the hash
	puts "Does the client like open spaces? (yes or no)"
	new_client[:open_space] = true if gets.chomp.downcase == "yes"

	# Prompts for information and uptades the hash
	# For colors, the program asks the user to add colors 
	# On the background it adds everything to an array inside the hash
	loop do
		puts "What are the client's favorite color? (type \"exit\" to finish)"
		color = gets.chomp.downcase 
		if color == "exit" 
			break
		else
			new_client[:favorite_colors] << color
		end
	end

	# returns the hash with all the information
	return new_client
end

def update_client
	



# Driver code
puts new_client
puts "Would you like to update any information? (yes or no)"
update_client if gets.chomp.downcase == "yes"


