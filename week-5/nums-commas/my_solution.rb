# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# Write a method separate_comma which takes a positive integer as its input and returns a comma-separated integer as a string. Like this:

# separate_comma(1000)    # => "1,000"
# separate_comma(1000000) # => "1,000,000"
# separate_comma(0)       # => "0"
# separate_comma(100)     # => "100"

# 0. Pseudocode

# Input: A positive integer
# Output: Returns the integer; if the integer is 4+ digits long, commas separate every three digits, starting from the rear
# Steps:
# Define method separate_comma, which takes one argument - an integer
# => Note: we will assume the integer is positive per the challenge specs
# 	IF integer is >= 4 digits long
# 		convert integer to array
# 		reverse array
# 		create new array
# 		until array is empty
# 			take three numbers at a time
# 			add the three-number section to the new array
# 			add comma to new array
# 		create final array
# 		set final array equal to reversed new array
# 		convert final array to string and return
# 	ELSE return integer as string


# 1. Initial Solution

def separate_comma(num)
	if num >= 999
		array = num.to_s.split('').reverse
		new_array = []
		until array.empty?
			new_array << array.slice!(0..2)
			new_array << ","
		end
		new_array.pop
		final_array = new_array.flatten.reverse
		final_array.join
	else num.to_s
	end
end


# 2. Refactored Solution

def separate_comma(num)
	if num >= 999
		array = num.to_s.split('').reverse
		new_array = []
		until array.empty?
			new_array.push(array.slice!(0..2)).push(",")
		end
		new_array.pop
		final_array = new_array.flatten.reverse.join
	else num.to_s
	end
end

# Trying to get that one-liner...not working

# def separate_comma(num)
# 	num >= 999 ? num.to_s.split('').reverse.each_slice(3) : num.to_s
# end

# 3. Reflection

# Prompt:

# What was your process for breaking the problem down? What different approaches did you consider?
# Was your pseudocode effective in helping you build a successful initial solution?
# What Ruby method(s) did you use when refactoring your solution? What difficulties did you have implementing it/them? Did it/they significantly change the way your code works? If so, how?
# How did you initially iterate through the data structure?
# Do you feel your refactored solution is more readable than your initial solution? Why?

# Reflection:

# My process for breaking the problem down was to start with base cases - what happens if the number is less than 4 digits (doesn't need a comma) and then to consider how we add commas - starting from the rear of the number.  We also get the number as an integer, and they want it output as a string, which indicated to me that there was probably supposed to be an array in there somewhere.

# My pseudocode was pretty detailed, so translating it into code wasn't too difficult.  I just had to think through how the data was changing as we went along.

# So, I used pretty much the same methods for the initial solution and the refactored solution.  I just tightened up the latter a little bit.  But the way that I approached the problem made certain methods seem obvious.  The only new one that got added in the refactored solution was push, which eliminated the need for the second line of the until loop.  It was very easy to use.

# I iterated through the data structure using slices both times.  I knew I wanted sets of three, so that just seemed like the best way to do it.  I could have done a pop.times(3) then added a comma or something, but slice is so much cleaner and it just makes more sense.  Ruby is pretty intuitive, so trying to get around obvious methods is more difficult.

# I think the refactored solution is about the same as the initial.  It might be a bit more dense, because the method chains are longer, but I think its just as readable.




