// Release 1: Tests to User Stories - Gabrielle Gustilo
// Look at the tests.js file in this directory.

// Based on the tests, write user stories that describe what the code needs to do. User stories take the following format:

// As a user, I want to..

// USER STORIES:

// As a user, I want to be able to find the sum of any ordered collection of random integers by calling a function called 'sum'.

// As a user, I want to be able to find the mean of any ordered collection of random integers by calling a function called 'mean'.

// As a user, I want to be able to find the median of of any ordered collection of random integers by calling a function called 'median'.


//Release 2: User Stories to Pseudocode - Jeremy Powell

// Based only on the user stories you received from the first person, pseudocode the logic you would need to implement each story. Your pseudocode should be small steps that can be easily translated into code.
//

// create a function called 'sum' that will accept an argument of numbers(array) and add all contents of the argument. return value

// create a function called 'mean' that will accept an argument of numbers(array). mean will add all values of argument and divide by the total number of items in the array (length). return value

// create a function called 'median' that will accept an argument of numbers(array).
// first arrange the array in numerical order from smallest to largest
// check array length
// if length is even - there are two middle numbers, add them together and averge them.
  // find indexs-
  // length, divide by two,
  // (length divided by two) subtract 1
  // add those two index values together and divide sum by 2
  // return value
// if length is odd
  // index is length of array divided by 2. round down(floor)
  // return value at that index

// evenExample [0,1,2, 3,4, 5,6,7,] length=8
// want[3]&[4] 8/2=[4], (8/2)-1= [3],
// oddExample [0,1,2,3, 4, 5,6,7,8] length=9
// want[4] 9/2=4.5. use math method to get whole number

//Release 3: Pseudocode to Code - Joe Marion

//Release 4: Refactor and Translate to User Stories - Alex Blair 

//Note: Persons 3 & 4 did not submit their portions of the challenge to Person 1 by 12:30 pm on Monday 10/26.  If they do so by the end of the day, I  will resubmit this challenge.  Otherwise, let it be known that Person 1 finished their portion on Wednesday at 4:30 pm the week before, and Person 2 on Friday at 3 pm.

//Since there is no code, I have no comments regarding whether or not it passed the tests.