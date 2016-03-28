 // JavaScript Olympics

// I paired with Caitlin Hoffman on this challenge.

// This challenge took me 2 hours.

// Warm Up



// Bulk Up

var athlete1 = {
  name: "Sarah Hughes",
  event: "Ladies' Singles",
};

var athlete2 = {
  name: "Bob Smith",
  event: "Football",
};

var athleteArray = [athlete1, athlete2];

// Add a 'win' property to each athlete in the array which is a function that prints a sentence
// stating that the athlete won the event. E.g. "Sarah Hughes won the Ladies' Singles!"
var addWin = function(athleteArray) {
  for (var i=0; i < athleteArray.length; i++){
    athleteArray[i].win = function(){console.log(this.name + ' won ' + this.event + '.')}
  }
}  
  
addWin(athleteArray);

for (var i=0; i<athleteArray.length; i++) {
	athleteArray[i].win();
}


// Jumble your words

var reverse = function(string) {
  return string.split('').reverse().join('');
};

console.log(reverse("Reverse this string."))

// 2,4,6,8
var numberArray =[1,2,3,4,5,6,7,8,9,10];

function even(array) {
  var evenNumbers = [];
  for (var i=0; i < array.length; i++){
    if ( array[i] % 2 === 0){
      evenNumbers.push(array[i]);
    };
  };
  return evenNumbers;
};

console.log(even(numberArray));
  
// // "We built this city"
function Athlete(name, age, sport, quote){
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)


// Reflection
/*
- What JavaScript knowledge did you solidify in this challenge?

  Object literal notation, adding and deleting properties outside of the object,
  manipulating strings in JavaScript, creating and using object contructors.

- What are constructor functions?

  A constructor function is a function that creates an object.  Contructor functions
  are used when you need to create multiple instances of the same type of object.

- How are constructors different from Ruby classes (in your research)?

  They are very similar.  Constructors don't seem like true 'classes', for example
  I'm not sure there is a way to have a class variable in JavaScript.  Classes
  typically have plenty of methods defined in them.  It seems awkward to declare
  lots of functions inside a constructor, but maybe this is considered normal in
  JavaScript.  Otherwise you can declare the method as part of the 'prototype' of
  the JavaScript class.