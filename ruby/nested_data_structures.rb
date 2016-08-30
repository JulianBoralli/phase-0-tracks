# Phase 0 - Assignment 5.4 - Nested Data Structure
# Design and build a nested data structure to represent a real-world construct.


# Creates a nested data structure to represent a groceries list
# The numbers in the arrays represent quantity of each item
# total_cash stores the amount o cash available to spend
groceries = {

	fruits: [
		["orange", 2],
		["mango", 3],
		["strawberry", 12]
	],
	vegetables: [
		["kale", 2],
		["escarole", 3],
		["tomato", 12]
	],
	meat: {
			chicken: [
				["leg", 2],
				["breast", 3]
			],
			beef: [
				["ribeye", 4],
				["new york", 6]
			],
			fish: [
				["tilapia", 3],
				["salmon", 4],
				["tuna", 8]
			]
	},
	total_cash: 130.50
}


# Checks for how much cash we have
puts groceries[:total_cash]

# Doubles the amount of mango
puts groceries[:fruits][1][1] = 2 * groceries[:fruits][1][1]

# Adds chicken wings to the list
p groceries[:meat][:chicken] << ["wings", 12]

# Subs the tilapia for cod
groceries[:meat][:fish][0] = ["cod", 2]
p groceries[:meat][:fish]

# Stops eating meat :(
# But saves it to a variable in case we change our mind
# PS: I had to duplicate the object, beacause when we assign
# hashes to variables, we are assigning pointers to the same object in memory
in_doubt = groceries[:meat].dup
p groceries[:meat].clear

# Changed our minds :)
# Go back to eating meat and stop eating veggies
groceries[:meat] = in_doubt
p groceries[:meat]
groceries[:vegetables].clear
p groceries[:vegetables]



