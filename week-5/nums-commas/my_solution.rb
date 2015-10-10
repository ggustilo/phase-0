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
# 			slice array every three numbers
# 			add slice to new array
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

# separate_comma(9876543)


# 2. Refactored Solution


# 3. Reflection