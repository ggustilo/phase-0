
# (HINT: methods can accept other methods as arguments or called within other methods)

# Create a new list
#Input: string - name of grocery list
#Output: new hash with given name
#Pseudocode 
#  define method which takes one argument- "list"
#  create new hash with "list"

def create_grocery_list(list)
  list = Hash.new
end

# Add an item with a quantity to the list
#Input:  two strings - "item" and "quantity" 
#Output: key-value pair of item and quantity
#Pseudocode
#  define method which takes three arguments - "list" and "item" and "quantity"
#  add "item" and "quantity" as key-value pair to "list"

def add_item(list, item, quantity)
  list[item] = quantity
  list
end

# Remove an item from the list
#Input: Key, in the key value pair of the item we wish to delete
#Output: Having the key value pair gone from the list
#Pseudocode hash_name.delete(key)

def delete_item(list, item)
  list.delete(item)
  list
end

# Update quantities for items in your list
#Input: three strings - "list", "item", "quantity"
#Output: updated value for given key
#Pseudocode
#  define method which takes three arguments - "list", "item", "quantity"
#  update value with quantity for item

def update_item(list, item, quantity)
  list[item] = quantity
  list
end

# Print the list (Consider how to make it look nice!)
#Input: list
#Output: lovely string with all key-value pairs
#Pseudocode
# define method which takes one argument - "list"
# create variable for lovely printed hash
# add opening stuff
# add key-value pairs
# print variable

def print_grocery_list(list)
  print_list = "Grocery List: "
  print_list += list.to_s
  p print_list
end

# Create a new list

create_grocery_list("costco_list")

costco_list = Hash.new

# Add the following items to your list
# Lemonade, qty: 2

add_item(costco_list, "Lemonade", 2)

# Tomatoes, qty: 3

add_item(costco_list, "Tomatoes", 3)

# Onions, qty: 1

add_item(costco_list, "Onions", 1)

# Ice Cream, qty: 4

add_item(costco_list, "Ice Cream", 4)

# Remove the Lemonade from your list

delete_item(costco_list, "Lemonade")

# Update the Ice Cream quantity to 1

update_item(costco_list, "Ice Cream", 1)

# Print out your list (Is this readable and nice looking)?

print_grocery_list(costco_list)



# Prompt:

# What did you learn about pseudocode from working on this challenge?
# What are the tradeoffs of using Arrays and Hashes for this challenge?
# What does a method return?
# What kind of things can you pass into methods as arguments?
# How can you pass information between methods?
# What concepts were solidified in this challenge, and what concepts are still confusing?

#Reflection:

# I learned that I tend to pseudocode a lot more fanatically than other people lol.  For easy problems like this, its not as necessary for me, mentally, but I got into the habit because I get really confused and anxious when approaching larger problems.  So, going through the pseudocode allows me to not only break down the problem into manageable pieces, but gives me a place to start that's not so scary.

# So, my partner and I both immediately decided to use a Hash.  We didn't even really think about using an array.  I think this is because, for a grocery list, a key-value pair seems like a much easier way to format the information, rather than as alternating values in an array.

# A method returns the last evaluated statement unless a specific value is explicitly returned.

# You can pass pretty much anything into a method as an argument - strings, integers, other arrays or objects.

# You can pass information between methods using the same variables, return statements and some kind of driver code.

# My awareness of what is returned by a method was really heightened by this challenge, and my understanding of variable scope as well.  For example, our create_grocery_list method does create a hash, but because that hash is handled by a local variable, it is not accessible outside that method.  Thus, I had to explicitly make a hash outside a method for the other tests to pass.  I'm not entirely sure how to fix that problem, given that we are not supposed to use a class, and I am not comfortable using global variables.  :/  Some day perhaps I will come back and refactor.

