//create a method to reverse a string
	//define a method that takes a string as the parameters
	//use for loop to print the string backwards .length and string's index
	//assign a new index to each letter of the string to print reversed 

function reverseString(string) {
	var stringReversed = '';
	//for loop to reverse 
	for (var i = string.length -1; i >= 0; i--)
		//move the charcter at an index to the end and set stringReversed equal to this new string
		stringReversed += string[i];
	return stringReversed;
}

//driver code
console.log(reverseString("michelle"));
console.log(reverseString("michelle kelly"));
console.log(reverseString("it's finally summer"));