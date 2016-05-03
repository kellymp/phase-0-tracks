//create a method to reverse a string
	//split string turning it into an array 
	//reverse string array
	//join the split string
	//print the string backwards

//define method that takes a string as a parameter
function reverseString(string) {
	//split the string turning it into an array
	return string.split('').reverse().join('');
}

console.log(reverseString("michelle"))
