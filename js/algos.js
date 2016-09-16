
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




// Driver Code

var test_long_string = ["long phrase","longest phrase","longer phrase", "longest phrase"];


longest_string(test_long_string);