//create two arrays. One for colors and one for names
var colors = ['red', 'yellow', 'blue', 'green'];
var names = ['Sadie', 'Ed', 'Chesnut', 'Flash'];

//add another color and name to each corresponding array
colors.push('purple');
names.push('Black Beauty');

//assign colors to name using an object
function toObject(names, colors) {
	var result = {};
	for (var i = 0; i < names.length; i++)
			result[names[i]] = colors[i];
		return result
}

console.log(toObject(names, colors));

//write constructor for a car 
function Car(color, age, isSUV) {
  console.log("Our new car:", this);
//give car a few properties 
  this.color = color;
  this.age = age;
  this.isSUV = isSUV;
  
  this.vroom = function() { console.log("Vroom!"); };
  
  console.log("CAR INITIALIZATION COMPLETE");
}

console.log("Let's get a SUV ...");
// call the constructor function
var anotherSUV = new Car("red", 2, true);
console.log(anotherSUV);
console.log("Our car is fast!");
anotherSUV.vroom();
console.log("!!!!!!");

var rangeRover = new Car("black", 3, true);
console.log(rangeRover)
rangeRover.vroom();

var toyotaCorolla = new Car("white", 6, false);
console.log(toyotaCorolla)
toyotaCorolla.vroom();