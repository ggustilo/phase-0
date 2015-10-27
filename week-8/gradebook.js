/*
Gradebook from Names and Scores
I worked on this challenge [with Gabrielle Gustilo].
This challenge took me [#] hours.
You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).
Do not alter the students and scores code.
*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]

// __________________________________________
// Write your code below.

// var gradebook = {};

// gradebook['Joseph'] = {};
// gradebook['Susan'] = {};
// gradebook['William'] = {};
// gradebook['Elizabeth'] = {};

// gradebook['Joseph'].testScores = scores[0];
// gradebook['Susan'].testScores = scores[1];
// gradebook['William'].testScores = scores[2];
// gradebook['Elizabeth'].testScores = scores[3];

// gradebook.addScore = function(name, score) {
//   gradebook[name].testScores[gradebook[name].testScores.length] = score;
// }

// gradebook.getAverage = function(name) {
//   var score = average(gradebook[name].testScores);
//   return score;
// }

// function average(array) {
//   var sum = array.reduce(function(a,b){return a+b;});
//   var average = sum/array.length;
//   return average;
// }

// __________________________________________
// Refactored Solution

var gradebook = {};

gradebook['Joseph'] = {};
gradebook['Susan'] = {};
gradebook['William'] = {};
gradebook['Elizabeth'] = {};

gradebook['Joseph'].testScores = scores[0];
gradebook['Susan'].testScores = scores[1];
gradebook['William'].testScores = scores[2];
gradebook['Elizabeth'].testScores = scores[3];

gradebook.addScore = function(name, score) {
  gradebook[name].testScores.push(score);
}

gradebook.getAverage = function(name) {
  var score = average(gradebook[name].testScores);
  return score;
}

function average(array) {
  var sum = array.reduce(function(a,b){return a+b;});
  var average = sum/array.length;
  return average;
}

// __________________________________________
// Reflect
/*

What did you learn about adding functions to objects?
How did you iterate over nested arrays in JavaScript?
Were there any new methods you were able to incorporate? If so, what were they and how did they work?

*/
/*
I learned that adding functions to objects is really easy.  Yay!

We didn't really iterate over any arrays.  The closest we got was the reduce function, which takes two numbers and sums them, implictly iterating over an array.

I had never used reduce in JavaScript before, so that was useful.  We used push to add a value to the end of an array, but that was not new for me.  Actually the way we did it in the initial solution - using the array length to add a value - was a neat trick I had never seen before.  I don't know why you wouldn't just use push, which we did when refacotring, but it was cool nonetheless. :)

*/
// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}



assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)