
// Create a function that takes an array of string as input
// Loop through each item in the array and discover what the max 
// number of characters in a string is. It could be just one string, 
// or multiple string could have the maximum amount.
// After that, filter the original array based on how many items match the
// maximum number of characters.

var longest_string = function(string_array) {
	var max_chars = 0;  	
	for (i = 0; i < string_array.length; i++) {
		if (string_array[i].length > max_chars) {
			max_chars = string_array[i].length;
		}
	}
	var longest = string_array.filter(function(item) { return item.length == max_chars; });
	console.log("Number of character:", max_chars);
	if (longest.length == 1) {
		console.log("Longest string:",longest[0]);
	} else {
		console.log(longest.length + " Longest strings:");
		longest.forEach(function(long_string) { console.log(long_string); });
	}
	return longest;
};

// Create a function that takes two objects as input
// loop through the keys and values of the first object 
// and check if the is a key with the same value in the second obj.
// if there is, stop the loop and return true, else, return false 
// after the loop finishes.

var compare_objects = function(obj1, obj2) {
	for (var key in obj1) {
  	if (obj2[key] == obj1[key]) {
  		return true;
  	}
  }
  return false;
};
 
// Create a function that takes an integer as input.
// It loops the integer number of times to generate 
// random strings of random length (1 to 10 characters).
// Each string is shoveled into a new random_strings array.
// It then returns the random_strings array.

var random_strings = function(length) {
	var random_strings = [];
	for (var i = 0; i < length; i++) {
		var number_characters = Math.ceil(Math.random()*10);
		var word = "";
		for (var c = 0; c < number_characters; c++) {
			var random_character = String.fromCharCode(Math.round(Math.random() * (122 - 97) + 97));
			word = word + random_character;
		}
		random_strings[i] = word;
	}
	return random_strings;
};



// Driver Code for longest string

var test_long_string = ["long phrase","longest phrase","longer phrase"];
longest_string(test_long_string);
console.log("Testing longest string:");
console.log("--------------------------------");

// Driver code for comparing keys and values

var obj1 = {name: "Steven", age: 53, gender: "male"};  
var obj2 = {name: "Tamir", age: 53, gender: "female"};
var result = compare_objects(obj1, obj2);
console.log("Testing two objects comparison:");
console.log(result);
console.log("--------------------------------");

// Driver Code for random array

// for (var i = 0; i < 3; i++) {
// 	console.log("Testing random array:");
// 	var random_length = Math.ceil(Math.random()*10);
// 	var random_strings_result = random_strings(random_length);
// 	console.log(random_strings_result);
// 	longest_string(random_strings_result);
// }
// console.log("--------------------------------");

var random_strings_results = [];
for (var i = 0; i < 10; i++) {
	var random_length = Math.ceil(Math.random()*10);
	random_strings_results[i] = random_strings(random_length);
}
console.log("--------------------------------");

random_strings_results.forEach(function(string_array) { 
	console.log("Testing random array:");
	console.log(string_array);
	longest_string(string_array); 
});