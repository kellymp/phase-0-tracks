//create a function to reverse a string
	//define a function that takes a string as the parameters
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

//add driver code that store the results of the function in a variable 
var results = reverseString('hello world!')

//add driver code that prints the variable results if the condition (1=1) is true
if (1==1) {
	console.log(results);
}