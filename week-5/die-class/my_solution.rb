# Die Class 1: Numeric

# I worked on this challenge by myself.

# I spent 1 hours on this challenge.

# 0. Pseudocode

# Input: An integer indicating number of sides
# Output: A new die instance object
# Steps:
	# To initialize an instance, check
		# IF number of sides is greater than one
		# => create instance variable of sides
		# ELSE raise error
	# Create sides method that calls sides variable
	# Create a new Random object
	# Attach roll method to random object to give a number between 1 and sides


# 1. Initial Solution

class Die
  def initialize(sides)
    if sides > 1
    @sides = sides
	else raise ArgumentError.new "Must be > 1"
	end
  end

  def sides
    @sides
  end

  def roll
    dice_roll = Random.new
    dice_roll.rand(1..sides)
  end
end


# 3. Refactored Solution

class Die
  def initialize(sides)
    if sides > 1
	    @sides = sides
	else raise ArgumentError.new "Must be > 1"
	end
  end
#Note: I tried doing the if statement as a ternary, but it caused problems with the else clause - it kept asking for block format.  I couldn't figure out what was wrong, so I just put it back.

attr_reader :sides

  def roll
   Random.new.rand(1..sides)
  end
end


# 4. Reflection

# Prompt:

# What is an ArgumentError and why would you use one?
# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
# What is a Ruby class?
# Why would you use a Ruby class?
# What is the difference between a local variable and an instance variable?
# Where can an instance variable be used?

# Reflection: 

# An ArgumentError is an error resulting from an inappropriate use of arguments.  You might use it if the argument was not of the datatype expected, if there were too many or too few of them, or if the argument has to follow certain parameters to be valid for the method.

# I used the raise keyword, which was pretty cool.  I also used the attr_reader shortcut in place of the sides method.  They were both easy to use, although I'm not entirely clear on the full meaning of using attr_reader yet.

# A class is a blueprint for creating objects of that class type.  Behaviors and attributes are passed from the class to the instance objects of the class.  They can also be passed from class to class.

# Using a Ruby class lets you associate certain attributes and behaviors with certain types of objects, so that when you create an instance of that class, it is already automatically imbued with certain things.  This saves you from rewriting the same type of object all the time.

# A local variable is only useful within the scope of a single method.  An instance variable can be transferred between methods for any instance of that class.

# An instance variable can be used within the scope of that particular object.