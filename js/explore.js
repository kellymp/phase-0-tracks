//create a method to reverse a string
	//use a for loop to print the string backwards using the string length and index
	//assign a new index to each letter of the string to print reversed 

//define method that takes a string as a parameter
function reverseString(string) {
	var stringReversed = '';
	//for loop to reverse 
	for (var i = string.length -1; i >= 0; i--)
		//move the charcter at an index to the end and set stringReversed equal to this new string
		stringReversed += string[i];
	return stringReversed;
}

// add driver code that calls the reverseString function
console.log(reverseString("michelle"));
console.log(reverseString("michelle kelly"));
console.log(reverseString("coding is fun"));

//add driver code that store the results of the function in a variable 
var results = reverseString('hello world!')

//add driver code that prints the variable results if the condition (1=1) is true
if (1==1) {
	console.log(results);
}

//---------------------------------------------------------
// The below method uses built in methods

//create a method to reverse a string
	//split string turning it into an array 
	//reverse string array
	//join the split string
	//print the string backwards

//define method that takes a string as a parameter
//function reverseString(string) {
	// set a variable equal to the string split, reversed, and joined back together
//	var stringReversed = string.split('').reverse().join('');

	//print the variable if the specidied condition is true using an if statement
//	if (stringReversed == stringReversed) { 
//		return stringReversed;
//	}
//}

//console.log(reverseString("michelle"));
//console.log(reverseString("michelle kelly"));
//console.log(reverseString("coding is fun"));

