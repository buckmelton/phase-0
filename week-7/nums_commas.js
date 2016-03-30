// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with Caitlin Hoffman .

// Pseudocode
// Input: An integer.
// Output: The input integer as a string with commas inserted appropriately e.g. 1457834 => 1,457,834
// Steps:
//   Turn integer into string
// 	 Reverse string
//   Loop through characters of string
//     Before every fourth character, insert a comma
//   Reverse string back




// Initial Solution
// var separateComma = function(theInt) {

// 	// Convert integer to string and reverse it.
// 	var revStr = theInt.toString().split('').reverse().join('');

// 	// Go through the reversed string and insert a comma before every fourth
// 	// character.
// 	i = 0;
// 	while (i <= revStr.length) {
// 		if ((i % 4) != 0 || i == 0) {
// 			i++;
// 			continue;
// 		} else {
// 			revStr = revStr.slice(0, i-1) + "," + revStr.slice(i-1);
// 			i++;
// 		}
// 	}

// 	// Reverse the string back.
// 	return revStr.split('').reverse().join('');

// }

// Refactored Solution

var separateComma = function(theInt) {

	// Convert integer to string and reverse it.
	var revStr = theInt.toString().split('').reverse().join('');

	// Go through the reversed string and insert a comma before every fourth
	// character.
	i = 0;
	while (i <= revStr.length) {
		if ((i % 4) == 0 && i != 0) {
			revStr = revStr.slice(0, i-1) + "," + revStr.slice(i-1);
		}
		i++;
	}

	// Reverse the string back.
	return revStr.split('').reverse().join('');

}


// Your Own Tests (OPTIONAL)

var theInt = 12345678;
console.log(theInt);
console.log(separateComma(theInt));



// Reflection
/*

- What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?

	I did approach the problem differently because I knew that the same set of powerful Enumerable methods
	were not available in JavaScript.  I would only have access to for and while loops and the character
	index.

- What did you learn about iterating over arrays in JavaScript?

	That you don't have access to as powerful a set of built-in iterators as you do in Ruby.

- What was different about solving this problem in JavaScript?

	There weren't nearly as many fancy built in methods like 'reverse' or 'each' that we
	could use, so it was more of a manual process.

- What built-in methods did you find to incorporate in your refactored solution?

	My refactoring actually didn't use any new built-in methods, rather it
	refactored how the loop was structured to make it more compact and simple.
	In my initial solution I used the built-in methods split, join, and slice.

*/