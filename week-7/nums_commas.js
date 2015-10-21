// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with Michael Jasinski.

// Create a function separateComma. It should accept an integer as an argument and return a comma-separated integer as a string.

// We recommend thinking through the logic with your pair without looking at your old pseudocode or solution. Get your brain thinking about the problem in a fresh, new way. Also, do not use Regular Expressions to complete this challenge. Regular Expressions look for patterns and are recognizable because they will be shown between two slashes, like so: /\d/.

// Your code should work in the following way:

// separateComma(1569743) == "1,569,743"

// Pseudocode
// INPUT: Integer
// OUTPUT: Integer as a string separated by commas every three digits
// Steps:
// 1- Create a function that takes an int
// 2- Create an array from the int 
// 3- Reverse the array 
// 4- FOR length of the array, starting at 3
// 5- Every third index
// 7- Iterate through array
// 8- Add comma 
// 9- Turn all of the index spots into strings
// 10- Reverse the array again
// 11- Join all the indices together

// Initial Solution

function separateComma(integer) {
  var array = integer.toString().split('');
  array.reverse();
    for (var i = 3; i < array.length; i+=3) {
      array[i] += ",";
  }
  var result = array.reverse().join('');
  console.log(result);
}


// Refactored Solution

function separateComma(int) {
  var arr = int.toString().split('').reverse();
    for (var i = 3; i < arr.length; i+=3) {
      arr[i] += ",";
  }
  var result = arr.reverse().join('');
  console.log(result);
}

// Your Own Tests (OPTIONAL)

separateComma(1000000)
separateComma(1234)
separateComma(100)
separateComma(1000000000)


// Reflection

// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
// What did you learn about iterating over arrays in JavaScript?
// What was different about solving this problem in JavaScript?
// What built-in methods did you find to incorporate in your refactored solution?

// Javascript certainly has different idiosyncrasies than Ruby.  I wouldn't say I approached the problem any differently - the logic was still mostly the same.  However, I did have to account for different types of bugs in JS.  In particular, the fact hat methods in JS are non-destructive really threw me off.

// You have a lot more control over the iteration in Javascript, due to the parameters in for loops.  However, its a trade-off, asarrays do not have as many nice methods in JS as in Ruby.

// In Ruby, I would have reached immediately for slice.  In JS, because slice is non-destructive (and therefore would not have yielded good results so cleanly), a for loop became our strongest option.

// We did use join, reverse, and split in both our initial and refactored solutions.  However, we used chaining just a bit more in the refactored solution.






