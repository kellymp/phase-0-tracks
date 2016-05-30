//declare two arrays for colors and names
var colors = ['blue', 'green', 'yellow', 'orange'];
var names = ['Finnigan', 'Camille', 'Bailey', 'Cinnamon'];

//add another color and name to the corresponding arrays
colors.push('red');
names.push('Nutella');

console.log(colors)
console.log(names)

//assign colors to horse names using an object
function assignColors(names, colors) {
	var result = {};
	for (var i = 0; i < names.length; i++)
			result[names[i]] = colors[i];
		return result
}

console.log(assignColors(names, colors));