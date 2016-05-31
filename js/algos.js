//release 0
//create a function that loops through an array of strings
//and compares the length of each string to return the longest one

function longestPhraseFinder(array) {
    var shortestPhrase = 0;
    var longestPhrase;
    for (var word = 0; word < array.length; word++)
    	if (array[word].length > shortestPhrase) {
    		shortestPhrase = array[word].length;
    		longestPhrase = array[word];
    }
    console.log(longestPhrase);    	
}

//release 1
//create a function that compares two objects to check for shared key-value pairs
//iterate through both objects to check if the values match
//use if conditional to return true if the values match, return false if they do not

function compareObjects(object1, object2) {
	var value;

	for (value in object1) {
		valueOne = object1[value];
	for (value in object2) {
		valueTwo = object2[value];
			if (valueOne == valueTwo) {
				return true;
			}
			else {
			}
	}
	}
 			return false
}

//release 2
//create a function that takes an integer for length that returns an array of strings of the length
//create an array to store words
//continue to generate words until the length matches the number of words in the array 

function arrayCreator(integer) {
	
	var wordArr = [];
	var alphabet = 'abcdefghijklmnopqrstuvwxyz';
	var string = '';

	while (wordArr.length < integer) {
		for (var i=0; i < Math.floor(Math.random() * 10 + 1); i++) {
			string += alphabet[Math.floor(Math.random() * 26)];
		}
		wordArr.push(string);
		word = '';
	}
	return wordArr
}		

//driver code for phase 0
longestPhraseFinder(["Michelle", "hello world", "heeeeeeeey", "its summertime", "yes"])
longestPhraseFinder(['January', 'March', 'June', 'November'])
longestPhraseFinder(['blue', 'orange', 'magenta', 'citrus yellow', 'red'])

//Driver code release 1
console.log(compareObjects({name: "Steven", age: 54}, {name: "Tamir", age: 54}))
console.log(compareObjects({name: "Steven", age: 35}, {name: "Tamir", age: 54}))
console.log(compareObjects({name: "Steven", age: 30}, {name: "Steven", age: 54}))

//driver code release 2
console.log(arrayCreator(6))
console.log(arrayCreator(10))
console.log(arrayCreator(3))