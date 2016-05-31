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

//driver code
longestPhraseFinder(["Michelle", "hello world", "heeeeeeeey", "its summertime", "yes"])
longestPhraseFinder(['January', 'March', 'June', 'November'])
longestPhraseFinder(['blue', 'orange', 'magenta', 'citrus yellow', 'red'])