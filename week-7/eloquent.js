// Eloquent JavaScript

// Run this file in your terminal using `node eloquent.js`. Make sure it works before moving on!

// Variable

var num = 5;
console.log(num + 5);

// Favorite food

prompt("What is your favorite food?")
alert("Hey, thats my favorite too!")

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

function FizzBuzz() {
	for (var i = 1; i <= 100; i++) {
		if (i % 3 === 0 && i % 5 === 0) {console.log("FizzBuzz")}
		else if (i % 3 === 0) {console.log("Fizz")}
		else if (i % 5 === 0) {console.log("Buzz")}
		else console.log(i)
	}
}

FizzBuzz();

// Functions

// Complete the `minimum` exercise.

function minimum(a, b) {
	if (a > b) {return b}
	else if (b > a) {return a}
	else return "I'm sorry, but they are equal."
}

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
	name: "Gabi",
	age: 27,
	fav_foods: ["fettucine alfredo", "kimchi", "chips"],
	quirk: "I make weird noises a lot."
}