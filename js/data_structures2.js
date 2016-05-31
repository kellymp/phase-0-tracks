//Release 0
//declare two arrays for colors and names
var colors = ['blue', 'green', 'yellow', 'orange'];
var names = ['Finnigan', 'Camille', 'Bailey', 'Cinnamon'];

//add another color and name to the corresponding arrays
colors.push('red');
names.push('Nutella');

console.log(colors)
console.log(names)


//Release 1
//assign colors to horse names using an object
function assignColors(names, colors) {
	var result = {};
	for (var i = 0; i < names.length; i++)
			result[names[i]] = colors[i];
		return result
}

console.log(assignColors(names, colors));

//Release 2

function Car(color, type, brand) {
  console.log("Our new car:", this);
  this.color = color;
  this.type = type;
  this.brand = brand;

  this.vroom = function() { console.log("*VROOM!*"); };
  
  console.log("CAR INITIALIZATION COMPLETE");
}

var carOne = new Car('red', 'SUV', 'range rover');
console.log(carOne);
carOne.vroom();

var carTwo = new Car('black', 'convertable', 'mercedes');
console.log(carTwo);
carTwo.vroom();

var carThree = new Car('blue', 'sedan', 'toyota');
console.log(carThree);
carThree.vroom();

