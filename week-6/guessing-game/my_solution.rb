# Build a simple guessing game


# I worked on this challenge by myself.
# I spent .5 hours on this challenge.

# Your GuessingGame class should be initialized with an integer called answer.

# Define an instance method GuessingGame#guess which takes an integer called guess as its input. guess should return the symbol :high if the guess is larger than the answer, :correct if the guess is equal to the answer, and :low if theguess is lower than the answer.

# Define an instance method GuessingGame#solved? which returns true if the most recent guess was correct and false otherwise.

# In this case, we're asking you to use symbols for :low, :high, and :correct. This is partly due to the way strings and symbols are stored in memory. 

# Pseudocode

# Input: integers for answer and calls to guess
# Output: symbols for low, high, correct, and boolean response to solved
# Steps:
# => define initialize method, which takes an integer argument
# 		create instance variable for answer
# => define guess method, which takes an integer argument
# 		create instance variable recent and set equal to guess
# 		IF guess is greater than answer
# 			return symbol high
# 		ELSIF guess is lower than answer
# 			return symbol low
# 		ELSE return symbol correct
# => define solved method
# 		IF recent equals answer
# 			return true
# 		ELSE return false

# Initial Solution

class GuessingGame
  def initialize(answer)
     @answer = answer
  end

  def guess(guess)
  	@recent = guess
  	if guess > @answer
  		:high
  	elsif guess < @answer
  		:low
  	else :correct
  	end
  end

  def solved?
  	if @recent == @answer
  		true
  	else false
  	end
  end
end

# Refactored Solution

class GuessingGame
  def initialize(answer)
     @answer = answer
  end

  def guess(guess)
  	@recent = guess
  	if guess > @answer
  		:high
  	elsif guess < @answer
  		:low
  	else :correct
  	end
  end

  def solved?
 	@recent == @answer
  end
end


# Reflection

# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
# When should you use instance variables? What do they do for you?
# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
# Why do you think this code requires you to return symbols? What are the benefits of using symbols?

# Instance variable values are unique to each instance object.  They can be accessed, defined and changed by all instance methods of the object.  Thus, you can mirror the descriptors and actions of real-world objects.  For example, say a pie object has a certain number of slices - this can be described by the instance variable @slices, which we will create when we create (instantiate) the pie.  It can also be different for each pie in a pie shop - they all have different values for @slices.  The value @slices is unique to each one.  Now, say we have a method eat_slice which reduces the number of slices in that particular pie by 1.  Since instance variables can by accessed by all instance methods, its no problem to alter @slices to reflect that one slice has now been eaten.

# You should use instance variables when you need a variable to be accessible by all methods of that instance.  They keep track of a variable across all alterations by all instance methods.

# Flow control allows you to determine what direction your program takes.  Depending on the input, you may need your program to do different things - put high or low, for example.  I did not have problems implementing it in this challenge.  In fact, I didn't really encounter any problems with this challenge at all. The instructions were very detailed, and thus I was able to generate very detailed pseudocode...and hence code.  Other than missing an end, my program worked with its first testings.

# We use symbols here we want to use the exact same value every time.  Symbols don't change, and when we want that consistency, they are often more appropriate than a variable or constant.
