// Pseudocode

// reverse function
// input: string
// output: a reversed string
// This function cycles through each character in the string
// in reverse order and then it adds it to a new string
// which is returned


//Reverse function

function reverse(string) {
	var reversedString = "";
	for (var i = string.length; i > 0; i--) {
		reversedString += string[(i - 1)];
	}
	return reversedString;
}

var storedString = reverse("hello");

if ( 1==1 ) {
	console.log(storedString);
} else {
	console.log("1 does not equal 1!!!");
}
