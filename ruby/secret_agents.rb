# Method Encrypt:
# 	1. Ask user for a password to encrypt.
# 	2. Grab the first letter (in the beggining) of the password.
# 	3. Change the grabbed letter to a new advanced letter (next letter in the alphabet).
# 	4. If there is another character which comes after, move to the next character, grab it
# 	and move to step 3. 
# 	5. If it is the last character of this password, finish encrypting.
# 	6. If the next character is a space, move to the next available character, grab it and 
# 	move to step 3.
def encrypt(password)
	i = 0
	while i < password.length
		if password[i] != " "
			if password[i] == "z"
				password[i] = "a"			
			else
				password[i] = password[i].next
			end
		end
		i += 1
	end
	return password
end



# Method Decrypt:
# 	1. Grab the password to decrypt.
# 	2. Grab the first letter (in the beggining) of the password.
# 	3. Figure out what is the letter that comes before that.
# 	4. Change the grabbed letter to the letter that comes before it (previous letter in the alphabet).
# 	5. If there is another character which comes after, move to the next character, grab it
# 	and move to step 3. 
# 	6. If it is the last character of this password, finish decrypting.
# 	7. If the next character is a space, move to the next available character, grab it and 
# 	move to step 3.
def decrypt(password)
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	i = 0
	while i < password.length
		if password[i] != " "
			password[i] = alphabet[alphabet.index(password[i])-1]
		end
		i += 1
	end
	return password
end

# Driver code:
# Prompts the user for encryt or decrypt option.
# Asks for which password to do the job.
# Prints the result to the screen.
puts "Do you encrypt or decrypt a password? (tyep e or d)"
option = gets.chomp.downcase
if option == "e"
	puts "Give me a password to encrypt"
	password = gets.chomp.downcase
	encrypt(password)
	puts "#{password}"
elsif option == "d"
	puts "Give me a password to decrypt"
	password = gets.chomp.downcase
	decrypt(password)
	puts "#{password}"
else
	puts "You didn't type a valid option, try again later! :("
end

# This code calls encript method on the word "swordfish"
# The method will return and encrypted string, which is 
# passed as a parameter do the decrypt method. The Decrypt method
# return a decrypted string, in this case "swordfish". Which is
# then printed to the screen.
puts decrypt(encrypt("swordfish"))