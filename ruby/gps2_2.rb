##PSEUDOCODE

# Method to create a list: Create an empty hash
# input: string of items separated by spaces (example: "carrots 2 apples 3 cereal pizza")
# steps: 
  # prompt user for a list of items. 
  # transform user input to hash.
  # print hash out to the user.  
  # output: return hash (information and print back the list) and thank the user for the info.

def create_list(list)
	groceries_list = {}
	list_array = list.split(",")
	list_array.each_index do |index|
		if index.even?
		item = list_array[index].strip.to_sym
		quantity = list_array[index + 1].to_i
		groceries_list[item] = quantity
		end
		break if list_array.length == index + 1
	end
	return groceries_list
end

# Method to add an item to a list
# input: item name and optional quantity
# steps: receive input and push/add new item into hash. 
# output: updated hash.

def add(groceries_list, item, quantity)
	groceries_list[item] = quantity
end

# Method to remove an item from the list
# input: item name and optional quantity 
# steps: receive input and delete item into hash. 
# output: updated hash

# def remove(groceries_list, item)
# 	groceries_list[item].delete
# end

# Method to update the quantity of an item
# input: item name and quantity 
# steps: find item and update the quantity
# output: updated hash

# Method to print a list and make it look pretty
# input: Hash unless the hash is something in the driver code (accessible everywhere
# steps: Format information
# output: print info

# Driver Code

puts "Please provide a list of items and quantities, separated by commas to create an initial list." 
puts "Example: carrots, 2, tomatoes, 3, rice, 1"
initial_list = gets.chomp.downcase	
groceries_list =  create_list(initial_list)
p groceries_list
loop do
	puts "What do you want to do:"
	puts "Type \"add\" to add items;"
	puts "Type \"remove\" to remove items;"
	puts "Type \"update\" to update items;"
	puts "Type \"print\" to print your list;"
	puts "Type \"done\" to exit this program;"
	input = gets.chomp.downcase
	case input
	when "add"
		puts "add"
end




