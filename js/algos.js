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







//driver code for phase 0
longestPhraseFinder(["Michelle", "hello world", "heeeeeeeey", "its summertime", "yes"])
longestPhraseFinder(['January', 'March', 'June', 'November'])
longestPhraseFinder(['blue', 'orange', 'magenta', 'citrus yellow', 'red'])