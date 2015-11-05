//Grocery Store Challenge

// Requirements:

	// Create a new list
	// Add an item with a quantity to the list
	// Remove an item from the list
	// Update quantities for items in your list
	// Print the list (Consider how to make it look nice!)

//User Stories:

	// As a user, I want to be able to create a new grocery list with items and quantities.

	// As a user, I want to be able to add an item with quantity to the list.

	// As a user, I want to be able to remove an item from the list.

	// As a user, I want to be able to update the quantities for any item on the list.

	// As a user, I want to be able to print the list in a nice way.

//Pseudocode:

// Create a new object prototype called Grocery List which takes argument name
//		Create property called name
//			set it equal to the argument
//		Create a property called list
//			set it equal to an empty object
// 		Create a property called add_item
//			set it equal to a function
//			set item property of list object equal to quantity
//		Create a property called remove_item
//			set it equal to a function
//			delete item property from list
//		Create a property called update_item
//			set it equal to a function
//			set item property in list equal to quantity
//		Create a property call print_list
//			set it equal to a function
//				print name of the list
//				FOR each item in the list
//					print item
//					print quantity



function groceryList(name) {
	this.name = name;

	this.list = {};

	this.add_item = function(item, quantity) {
		this.list[item] = quantity;
	}

	this.remove_item = function(item) {
		delete this.list[item];
	}

	this.update_item = function(item, quantity) {
		this.list[item] = quantity;
	}

	this.print_list = function() {
		console.log(this.name);
		console.log();	
		for (item in this.list) {
			console.log(item, this.list[item]);
		}
	}

}


//Tests:

var myList = new groceryList("My List");
myList.print_list();
myList.add_item("milk", 1);
myList.add_item("eggs", 12);
myList.add_item("bananas", 6);
myList.add_item("pound of oatmeal", 2);
myList.print_list();
myList.remove_item("pound of oatmeal")
myList.update_item("bananas", 7);
myList.print_list();


//Reflection:

// Prompt: 

// What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)
// What was the most difficult part of this challenge?
// Did an array or object make more sense to use and why?


// I really solidified the idea of a JavaScript object prototype in this challenge.  It was a bit tricky figuring out how to do the functions, but it worked really well I think.

// The most difficult part of the challenge was figuring out how to do functions in a prototype that accomplish the right thing.

// I used an object.  It just seemed like a better object for the goal - to create multiple grocery lists that have functions you can call on them.  With the prototype, you can create new lists easily, and the same functions will always apply.

