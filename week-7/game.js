// Design Basic Game Solo Challenge

// This is a solo challenge

// Who/what are the main characters/things in your game? They will be objects. What properties should they have? Write these as comments in the description section. In an earlier version of Code Combat, you could see an Object's properties when you hovered over this. In the image below, you can see Tharin (the object) and his properties to give you an example of how your objects could look.
// Consider any other objects you need. Do you need a sword? What about a cannon, death ray, gold, magic seeds, etc.? Write those as comments in the description section as well.
// Remember, you need to have at least two objects defined and used in this challenge.
// Write at least two functions you'll need to manipulate your objects to complete your goals as well.


// Your mission description:
// Overall mission:  To eat the cheese.
// Goals: To avoid the cat, and eat the cheese before the cat eats the cheese.
// Characters: Cat, mouse
// Objects: Mouse (position, health), Cat (position), Cheese (position), board (rows, columns, mouse position, cat position, cheese position)
// Functions: Mouse will move up, down, right, left; cat will check which is closer, mouse or cheese and move consequently

// #Pseudocode
// Create a board object that has properties of rows, columns, mouse position, cat position, cheese position
// Create a mouse object that has properties of position and health, and give it methods to move up, down, right, and left - which also alter mouse position on the board.
// Create a cat object that has a position property, which corresponds to the cat position in the board object, and also has a function to check which is closer - the mouse or the cheese, and a function to move towards whichever is closer
// Create a cheese object which has a position property, which corresponds to the cheese position in the board object.
// Move the mouse and have the cat check what its closer to and move accordingly given the board positions
// Check where mouse is in regard to cat and cheese on the board
// IF cheese and mouse position are the same
//		the game is over and you win
// ELSE IF cheese and cat position are the same
//		game over and you lose
// ELSE IF mouse and cat position are the same
//		mouse healthy goes down 1
//		IF mouse health is zero
//			game over; you lose
//		ELSE continue playing
// ELSE continue playing	

// #Initial Code

var mouse = {
	position: [0,0],
	health: 3,
	move: function(direction) {
		// move if you can (i.e. you are not moving out of bounds)
		if(direction === "up") {
			if (this.position[1] < 30) {
				this.position[1] += 1;
			}
			else {
				console.log("Out of bounds.");
			}
		}
		else if(direction === "down") {
			if (this.position[1] > 0) {
				this.position[1] -= 1;
			}
			else {
				console.log("Out of bounds.");
			}
		}
		else if(direction === "left") {
			if (this.position[0] > 0) {
				this.position[0] -= 1;
			}
			else {
				console.log("Out of bounds.");
			}
		}
		else if(direction === "right") {
			if (this.position[0] < 30) {
				this.position[0] += 1;
			}
			else {
				console.log("Out of bounds.");
			}
		}

		if (board.mousePosition === board.catPosition) {
			mouse.health -= 1;
			if (mouse.health > 0) {
				console.log("WHOA, the cat snagged you!  Watch out!");
			}
			else if (mouse.health = 0) {
				board.gameOn = false;
				console.log("The cat ate you.  You lose.");
			}	
		}
		else if (board.mousePosition === board.cheesePosition) {
			board.gameOn = false;
			console.log("You got the cheese! You win!");
		}
		else if (board.catPosition === board.cheesePosition) {
			board.gameOn = false;;
			console.log("The cat ate your cheese.  :(");
		}
		cat.move();
	}
		
}



var cat = {
	position: [30, 0],

	//function to calculate closest food to the cat
	closest_food: function() {
		var cheese_proximity = totalDistance(this.position, cheese.position);
		var mouse_proximity = totalDistance(this.position, mouse.position);
		if (cheese_proximity > mouse_proximity) {
			return "mouse";
		}
		else {
			return "cheese";
		}
	},
	//cat will move randomly along the y and x axis closer to the closest food
	//however, the cat will not move out of bounds
	//cat will check for game status change
	move: function() {
		//check desired food and move closer to it randomly along x and y axis
		if (this.closest_food() === "cheese") {
			// console.log(this.closest_food());
			
			var proposedMovementX = getRandomInt(0, distanceX(this.position, cheese.position));
			var proposedMovementY = getRandomInt(0, distanceY(this.position, cheese.position));

			// console.log ("Position: ", this.position);
			// console.log("Prop Movement: ", proposedMovementX, proposedMovementY);
			
			if (0 <= (this.position[0] + proposedMovementX) && (this.position[0] + proposedMovementX) <= 30) {
			this.position[0] += proposedMovementX;
			}
			else {
				this.position[0] -= proposedMovementX;
			};

			if (0 <= (this.position[1] + proposedMovementY) && (this.position[1] + proposedMovementY) <= 30) {
			this.position[1] += proposedMovementY;
			}
			else {
				this.position[1] -= proposedMovementY;
			};

			// return this.position;
			// console.log(this.position);
		}
		else if (this.closest_food() === "mouse") {
			// console.log(this.closest_food());
			
			var proposedMovementX = getRandomInt(0, distanceX(this.position, mouse.position));
			var proposedMovementY = getRandomInt(0, distanceY(this.position, mouse.position));

			// console.log ("Position: ", this.position);
			// console.log("Prop Movement: ", proposedMovementX, proposedMovementY);
			
			if (0 <= (this.position[0] + proposedMovementX) && (this.position[0] + proposedMovementX) <= 30) {
			this.position[0] += proposedMovementX;
			}
			else {
				this.position[0] -= proposedMovementX;
			};

			if (0 <= (this.position[1] + proposedMovementY) && (this.position[1] + proposedMovementY) <= 30) {
			this.position[1] += proposedMovementY;
			}
			else {
				this.position[1] -= proposedMovementY;
			};
			
			// return this.position;
			// console.log(this.position);
		}

		if (board.mousePosition === board.catPosition) {
			mouse.health -= 1;
			if (mouse.health > 0) {
				console.log("WHOA, the cat snagged you!  Watch out!");
			}
			else if (mouse.health = 0) {
				board.gameOn = false;
				console.log("The cat ate you.  You lose.");
			}	
		}
		else if (board.mousePosition === board.cheesePosition) {
			board.gameOn = false;
			console.log("You got the cheese! You win!");
		}
		else if (board.catPosition === board.cheesePosition) {
			board.gameOn = false;;
			console.log("The cat ate your cheese.  :(");
		}
	}
}

var cheese = {
	position: [15, 30],
}

var board = {
	rows: 30,
	columns: 30,
	mousePosition: mouse.position,
	catPosition: cat.position,
	cheesePosition: cheese.position,
	gameOn: true,
}

//function to calculate distance between two objects on the x axis
function distanceX(obj1, obj2) {
	return obj1[0] - obj2[0];
}

//function to calculate distance between two objects on the y axis
function distanceY(obj1, obj2) {
	return obj1[1] - obj2[1];
}

//function for cat to calculate closest edible object - mouse or cheese
//uses pythagorean theorem
function totalDistance(obj1, obj2) {
	var x = distanceX(obj1, obj2);
	var y = distanceY(obj1, obj2);
	var yDistance = y * y;
	var xDistance = x * x;
	var totalDistance = Math.sqrt(xDistance + yDistance);
	return totalDistance;
}

function getRandomInt (min, max) {
	return Math.floor(Math.random() * (max - min + 1)) + min;
}

// #Tests:

console.log(mouse.position);
console.log(cat.position);
mouse.move("up");
mouse.move("up");
mouse.move("up");
mouse.move("right");
mouse.move("right");
mouse.move("up");
console.log("--------------------");

console.log(mouse.position);
console.log(cat.position);
mouse.move("up");
mouse.move("up");
mouse.move("up");
mouse.move("right");
mouse.move("right");
mouse.move("up");
console.log("--------------------");

console.log(mouse.position);
console.log(cat.position);
mouse.move("up");
mouse.move("up");
mouse.move("up");
mouse.move("right");
mouse.move("right");
mouse.move("up");
console.log("--------------------");


// #Refactored Code

//Note:  I had to refactor this code dozens of times to get all the features working properly.  Next time, I will try to commit more often, so I can demonstrate that.  Apart from pulling out the function to check game status, which clearly needed to be done above, I'm not quite sure what else to do/I'm almost scared to mess with it too much now that it's working.

var mouse = {
	position: [0, 0],
	health: 3,
	move: function(direction) {
		// move if you can (i.e. you are not moving out of bounds)
		if(direction === "up") {
			if (this.position[1] < 30) {
				this.position[1] += 1;
			}
			else {
				outOfBounds();
			}
		}
		else if(direction === "down") {
			if (this.position[1] > 0) {
				this.position[1] -= 1;
			}
			else {
				outOfBounds();
			}
		}
		else if(direction === "left") {
			if (this.position[0] > 0) {
				this.position[0] -= 1;
			}
			else {
				outOfBounds();
			}
		}
		else if(direction === "right") {
			if (this.position[0] < 30) {
				this.position[0] += 1;
			}
			else {
				outOfBounds();
			}
		}
		checkPosition();
		cat.move();
	}
}

// check if any of the positions are overlapping, which prompts change in game status (gameOn)
function checkPosition(){
		if (board.mousePosition === board.catPosition) {
			mouse.health -= 1;
			if (mouse.health > 0) {
				console.log("WHOA, the cat snagged you!  Watch out!");
			}
			else if (mouse.health = 0) {
				board.gameOn = false;
				console.log("The cat ate you.  You lose.");
			}	
		}
		else if (board.mousePosition === board.cheesePosition) {
			board.gameOn = false;
			console.log("You got the cheese! You win!");
		}
		else if (board.catPosition === board.cheesePosition) {
			board.gameOn = false;;
			console.log("The cat ate your cheese.  :(");
		}
}

var cat = {
	position: [30, 0],

	//function to calculate closest food to the cat
	closest_food: function() {
		var cheese_proximity = totalDistance(this.position, cheese.position);
		var mouse_proximity = totalDistance(this.position, mouse.position);
		if (cheese_proximity > mouse_proximity) {
			return "mouse";
		}
		else {
			return "cheese";
		}
	},
	//cat will move randomly along the y and x axis closer to the closest food
	//however, the cat will not move out of bounds
	move: function() {
		//check desired food and move closer to it randomly along x and y axis
		if (this.closest_food() === "cheese") {
			
			var proposedMovementX = getRandomInt(0, distanceX(this.position, cheese.position));
			var proposedMovementY = getRandomInt(0, distanceY(this.position, cheese.position));
			
			if (0 <= (this.position[0] + proposedMovementX) && (this.position[0] + proposedMovementX) <= 30) {
			this.position[0] += proposedMovementX;
			}
			else {
				this.position[0] -= proposedMovementX;
			};

			if (0 <= (this.position[1] + proposedMovementY) && (this.position[1] + proposedMovementY) <= 30) {
			this.position[1] += proposedMovementY;
			}
			else {
				this.position[1] -= proposedMovementY;
			};
		}
		else if (this.closest_food() === "mouse") {
			
			var proposedMovementX = getRandomInt(0, distanceX(this.position, mouse.position));
			var proposedMovementY = getRandomInt(0, distanceY(this.position, mouse.position));
			
			if (0 <= (this.position[0] + proposedMovementX) && (this.position[0] + proposedMovementX) <= 30) {
			this.position[0] += proposedMovementX;
			}
			else {
				this.position[0] -= proposedMovementX;
			};

			if (0 <= (this.position[1] + proposedMovementY) && (this.position[1] + proposedMovementY) <= 30) {
			this.position[1] += proposedMovementY;
			}
			else {
				this.position[1] -= proposedMovementY;
			};
		}
		checkPosition();
	}
}

var cheese = {
	position: [15, 30],
}

var board = {
	rows: 30,
	columns: 30,
	mousePosition: mouse.position,
	catPosition: cat.position,
	cheesePosition: cheese.position,
	gameOn: true,
}

function outOfBounds() {
	console.log("Out of Bounds")
}

//function to calculate distance between two objects on the x axis
function distanceX(obj1, obj2) {
	return obj1[0] - obj2[0];
}

//function to calculate distance between two objects on the y axis
function distanceY(obj1, obj2) {
	return obj1[1] - obj2[1];
}

//function for cat to calculate closest edible object - mouse or cheese
//uses pythagorean theorem
function totalDistance(obj1, obj2) {
	var x = distanceX(obj1, obj2);
	var y = distanceY(obj1, obj2);
	var yDistance = y * y;
	var xDistance = x * x;
	var totalDistance = Math.sqrt(xDistance + yDistance);
	return totalDistance;
}

function getRandomInt (min, max) {
	return Math.floor(Math.random() * (max - min + 1)) + min;
}

// #Tests:

console.log(mouse.position);
console.log(cat.position);
mouse.move("up");
mouse.move("up");
mouse.move("up");
mouse.move("right");
mouse.move("right");
mouse.move("up");
console.log("--------------------");

console.log(mouse.position);
console.log(cat.position);
mouse.move("up");
mouse.move("up");
mouse.move("up");
mouse.move("right");
mouse.move("right");
mouse.move("up");
console.log("--------------------");

console.log(mouse.position);
console.log(cat.position);
mouse.move("up");
mouse.move("up");
mouse.move("up");
mouse.move("right");
mouse.move("right");
mouse.move("up");
console.log("--------------------");

// #Reflection:

// Prompt:
//
//What was the most difficult part of this challenge?
// What did you learn about creating objects and functions that interact with one another?
// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
// How can you access and manipulate properties of objects?
//
//	Reflection: 
//
//The most difficult part of this challenge was refactoring and debugging, by far.  To be honest, I was a little overly ambitious with the functionality of the game, considering I was short on time this week.  Getting the cat to a) constantly check which food it's closer to (the cheese or the mouse); b) make random movements, in the direction of the closest food, that allow for the possibility of catching it; and c) dealing with the limitations of the board - well, it was a little much.  I probably should have just gone for random movements on an unlimited field.  Now that I look back at it, the board could have taken a little more functionality too.
//
//Making objects and having them interact with one another was easy enough.  It's actually quite straightforward in JavaScript.  However, I did learn to a) be very careful about your logical operators; and b) be careful when you use += or -= (even if its assigning the result to a new variable or the expression is an if conditional statement, those operators still permanently alter the old variable).  Took me a while to figure out those bugs.
//
//I did use some built in methods - especially for the Math object, but I used them pretty much from the start, although I had to refactor to get them working properly.  I used the Math.random method, which calls a random number between 0 and 1; and the Math.floor method, which rounds a decimal down to the nearest integer.  I used a lot of if statements in my code, and I thought about using switch instead, but it didn't really seem like it would help that much.  If anything, it would make the code less readable.  So, I decided against that.
//
//You can access and manipulate properties of objects using dot notation.  Just call the object.property or object.property() if the property is a function.