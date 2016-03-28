// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var myName = "Buck"
myName = myName + " Melton"
console.log(myName)

var favFood = prompt("What is your favorite food?");
alert("Hey, " + favFood + " is my favorite too!");

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

FizzBuzz
for (var i=1; i<=100; i++) {
	if (i % 15 == 0) {
		console.log("FizzBuzz");
	} else if (i % 3 == 0) {
		console.log("Fizz")
	} else if (i % 5 == 0) {
		console.log("Buzz")
	} else {
		console.log(i)
	}
}

// Functions

// Complete the `minimum` exercise.

var min = function(a, b) {
	return (a < b) ? a : b;
}

console.log(min(5,6));
console.log(min(100,100));
console.log(min(5000, 3000));



// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
	name: "Buck",
	favFoods: ["cheese", "chocolate", "clementines"],
	quirk: "swims in the Pacific without a wetsuit",
}

console.log(me);