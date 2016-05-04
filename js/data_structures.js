//create two arrays. One for colors and one for names
var colors = ['red', 'yellow', 'blue', 'green'];
var names = ['Sadie', 'Ed', 'Chesnut', 'Flash'];

//add another color and name to each corresponding array
colors.push('purple');
names.push('Black Beauty');

//assign colors to name
function toObject(names, colors) {
	var result = {};
	for (var i = 0; i <= names.length; i++)
			result[names[i]] = colors[i];
		return result
}