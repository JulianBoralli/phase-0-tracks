def interview

	puts "What is the hamster's name?"
	name = gets.chomp

	while true
	puts "How loud is the hamster? (From 1 to 10)"
	loud = gets.to_i
	break if (1..10).include?(loud)
	puts "Please give a number from 1 to 10."
	end

	puts "What color is the hamster's fur?"
	fur_color = gets.chomp

	while true
	puts "Is the hamster a good candidate for adoption? (yes or no)" 
	adoption = gets.chomp.downcase
	break if adoption == "yes" || adoption == "no"
	puts "Please answer yes or no."
	end

	while true
	puts "Can you estimate how old the hamster is? (yes or no)"
	estimate = gets.chomp.downcase
	break if estimate == "yes" || estimate == "no"
	puts "Please answer yes or no."
	end

	if estimate == "yes"
		puts "How old is the hamster? (Years)"
		age = gets.to_i
	else
		age = nil
	end

	puts "\nHere are your answers:" 
	
	puts "\nHamster's name is #{name}.
Its level of loudness is #{loud}.
Its fur color is #{fur_color}.
Is the hamster ready for adoption?: #{adoption}."

	if estimate == "yes"
		puts "The hamster's age is #{age}."
  else 
  	puts "The hamster's age cannot be estimated."
  end
end


interview