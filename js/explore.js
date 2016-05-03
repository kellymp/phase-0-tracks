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
console.log(reverseString("michelle kelly"))
console.log(reverseString("coding is fun"))

//print the variable if some condition is true - NOT WORKING
//for (var i = 2; i = 2) {
//	console.log(reverseString("testing testing"))
//	console.log(reverseString("abcdefghijklmnopqrstuvwxyz"))
//}