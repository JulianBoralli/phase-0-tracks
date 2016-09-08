# Pseudocode

# 1 - Program prompts the user for a word.
# 2 - User enters the word.
# 3 - Program stores the word.
# 4 - Sets a guesses counter to zero and max number of guesses to 3 * word length.
# 5 - Other user guesses a character.
# 6 - Program increases counter an checks if character is included?
# 7 - If it is, update display and give a message. If not, gives a message.
# 8 - If no characters left, give a wining message and finish the program.
# 8 - If not, checks to see if there are more guesses available.
# 9 - If so, go back to step 5. 
# 10 - If not, finish the program with a loosing message.


# WordClass Capabilities

# - New instances are created with the guess word parameter
# - An instance is capable of calculating the max guesses and keeping track of guesses
# - An instance can check if a character is included or not?
# - An instance knows if the user has won the game or not

class WordGame

	attr_reader :incomplete_word, :max_guesses, :count_guesses, :guessed_characters

	def initialize(word)
		@complete_word = word
		@max_guesses = 3 * word.length
		@count_guesses = 0
		@incomplete_word = ""
	  word.length.times { @incomplete_word << "_"}
	  @guessed_characters = ""
	end

	def include?(character)
		@count_guesses += 1
		guessed_characters << character
		if @complete_word.include?(character)
			c_index = 0
			@complete_word.each_char do |c|
				@incomplete_word[c_index] = c if c == character
				c_index += 1
			end
			return true
		else
			return false
		end
	end

	def won?
		if @complete_word == @incomplete_word
			return true
		else
			return false
		end
	end


end

# Driver code

# First user inputs mistery word.
puts "Please provide a word, so we can start the guessing game:"
word = gets.chomp.strip.downcase
word_game = WordGame.new(word)
puts "Your mistery word has #{word_game.incomplete_word.length} characters."
puts word_game.incomplete_word

# Second user guesses the character in the mistery word
while word_game.count_guesses < word_game.max_guesses
	puts "Please provide a character:"
	character = gets.chomp.downcase
	if character.length != 1
		puts "Wrong input!!!"
		next
	end
	if word_game.guessed_characters.include?(character)
		puts "You've already tried this character, try another one!"
		next
	end
	puts word_game.include?(character) ? "Good Job! :)" : "Maybe next time. :("
	puts word_game.incomplete_word
	break if word_game.won?
	puts "You have #{word_game.max_guesses - word_game.count_guesses} guesses left."
end

puts word_game.won? ? "You are the master of the word game!" : "Oh noooooooo!!! Yep, you lost!"

