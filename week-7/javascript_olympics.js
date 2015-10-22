// JavaScript Olympics

// I paired with Nicole Yee on this challenge.

// This challenge took me 1 hour.

// Bulk Up

// Input: Array of Athletes - with name and event properties
// Output: String
// Steps: Add win property - print 'athlete won the event'
// should be a function expression so it can be assigned to a variable and called
// "Sarah Hughes won the Ladies' Singles!"

var sarah = {
  name: "Sarah",
  event: "Ladies Single"
};

var michael = {
  name: "Michael",
  event: "Swimming"
};

var mark = {
  name: "Mark",
  event: "Snowboarding"
};

var array = [sarah, michael, mark];

function athletes(array){
  for (var index = 0; index < array.length; index ++){
    array[index].win = array[index].name + " won the " + array[index].event;
  }
  return array
}

console.log(athletes(array));

// Jumble your words

// Input: String
// Output: The string reversed
// Steps: 
// Convert string to array
// Reverse array
// convert back to string

function reverse(string){
  return string.split('').reverse().join('');
};

var string = "Hello";

console.log(reverse(string));

// 2,4,6,8

// Input: Array of numbers
// Output: An array with only even numbers
// Steps:
// iterate through array
// IF item modulus 2 equals 0
//   add to new array
// ELSE ignore
// return new array

function evenNumbers(array) {
  var newArray = [];
  for (var index = 0; index < array.length; index++) {
    var num = array[index];
    if (num % 2 === 0) {
    newArray.push(array[index])}
  }
  return newArray;
}

var array = [1,2,3,4,5,6];

console.log(evenNumbers(array));

// "We built this city"

// Input: variable attached to an object with certain properties
// Output: property values
// Steps:
// create a constructor function
// function will accept four arguments
// argument one will be name as string
// argument two will age as num
// argument three will be sport as string
// argument four will be motto as string

function Athlete(name, age, sport, quote) {
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}


var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

// Reflection

// What JavaScript knowledge did you solidify in this challenge?
// What are constructor functions?
// How are constructors different from Ruby classes (in your research)?

// It was really helpful to put together a constructor function, since I had just been using the object literals.  Also still getting used to JS syntax.  More practice was good.

// Constructor functions are functions that create objects based off of the arguments passed in.

// In Ruby, objects inherit directly from the class, and have access to instance methods and variables.  In JavaScript, you have to use the function.prototype property to give the objects 'inheritable methods'.  So, in some sense, they are similar. Ruby's classes seeme a bit cleaner to me, but JS objects can be created outside a constructor using object literals, so that's a plus.
