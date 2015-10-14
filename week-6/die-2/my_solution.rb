# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.
# I spent [#] hours on this challenge.


# You already completed a basic Die class from Die Class 1. In this challenge you will create a more exciting Die class that takes an array of strings as its input. When Die#roll is called, it randomly returns one of these strings. If Die.new is passed an empty array, it should raise an ArgumentError. It should work like this:

# die = Die.new(['A', 'B', 'C', 'D', 'E', 'F'])
# die.sides # still returns the number of sides, in this case 6
# die.roll # returns one of ['A', 'B', 'C', 'D', 'E', 'F'], randomly

# Just to reiterate, in the previous exercise you passed in a number of sides, sides, and the labels were assumed to be the integers 1..sides. Now you're passing in a list of arbitrary labels. You could use this to represent a Dreidel (Links to an external site.) or Boggle Dice (Links to an external site.), for example.

# Pseudocode

# Input: An array of strings or an empty array.
# Output: One of the strings from array, or an error.
# Steps:
# To initialize an instance, check
		# IF labels is empty
		#  raise an error  	
		# ELSE create instance variables
		#  sides will equal length of the array
		#  labels will be the array
# Create sides method that calls sides variable
# Create lables method that calls labels variable
# For roll method
#  get random number by:
# 	created a new Random object
#     using the Random object to get a number between 0 and the length of the array
#     use the random number to get a random array value

# Initial Solution

class Die
  def initialize(labels)
  	if labels.empty?
  		raise ArgumentError
  	else
  		@sides = labels.length
  		@labels = labels
  	end
  end

  def sides
  	@sides
  end

  def roll
  	random_num = Random.new.rand(0..sides-1)
    dice_roll = @labels[random_num]
  end
end

# Refactored Solution

class Die
  def initialize(labels)
  	if labels.empty?
  		raise ArgumentError
  	else
  		@labels = labels
  		@sides = labels.length
  	end
  end

  attr_reader :sides

  attr_reader :labels

  def roll
    dice_roll = labels[Random.new.rand(0..sides-1)]
  end
end


# Reflection

# What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
# What does this exercise teach you about making code that is easily changeable or modifiable? 
# What new methods did you learn when working on this challenge, if any?
# What concepts about classes were you able to solidify in this challenge?

# So, I think the way that I implemented by solution was slightly different than what the base code prompted, in that I added another instance variable (and attribute reader) for labels.  There probably is another way to do it that would have been a bit closer to the original die class problem.  As it is, however, the problems are pretty similiar. The labels aspect just adds another small element on top of the original problem.

# Well, I think it's important that you keep your code clean and as DRY as possible, so that its easy to add functionality later.  It was also really helpful that I had the pseudocode from the old problem to work with.  It was only a week ago, but had it been several, it probably would have taken a lot longer for me to figure out what exactly I did without some prompting.  Hence, documentation is a big factor.

# I didn't really use any new methods for this challenge.  I raised an error, which is semi-new (end of last week) but that was about it.  Becoming more comfortable with the attribute reader and accessors is still something I'm working on.

# In this challenge, it really sunk in that there may be multiple methods needed to implement a solution, or establish an object.  Up until now, we've been working with single methods to do everything.  Seeing how multiple methods work together in a class is really key I think.

