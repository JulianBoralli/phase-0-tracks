
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
}

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
}
 



// Driver Code for longest string

var test_long_string = ["long phrase","longest phrase","longer phrase", "longest phrase"];
longest_string(test_long_string);

// Driver code for comparing keys and values

var obj1 = {name: "Steven", age: 53, gender: "male"};  
var obj2 = {name: "Tamir", age: 53, gender: "female"};
var result = compare_objects(obj1, obj2);
console.log(result);
