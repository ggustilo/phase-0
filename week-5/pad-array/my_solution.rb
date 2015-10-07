# Pad an Array

# I worked on this challenge with Noah Heinrich.

# I spent .45 hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# Input:  The input is an array, a minimum length for the array, and an optional padding value.
# Output:  The output is the provided array, padded to the minimum length as necessary.
# What are the steps needed to solve the problem?
	# define method pad with 3 arguments (the last optional with a default)
	# create variables for arguments
	# if second argument (minimum length) is greater than the current length of the array,
		# create second array which is old plus new values
		# add a padding value to the new array
		# check new array length
		# if array length does not equal minimum, repeat
	# else (minimum is equal or less than array length) return array
	# return new array

	# define method pad! with 3 arguments (the last optional with a default)
	# create variables for arguments
	# if second argument (minimum length) is greater than the current length of the array,
		# add a padding value to the array
		# check new array length
		# if array length does not equal minimum, repeat
	# else (minimum is equal or less than array length) return array
	# return new array


# 1. Initial Solution

def pad!(array, min_size, value = nil) #destructive
  	if min_size > array.length
  		while array.length < min_size
  			 array << value
  		end
  		return array
  	else return array
  	end
end

def pad(array, min_size, value = nil) #non-destructive
  	new_array = array.dup
  	if min_size > new_array.length
  		while new_array.length < min_size
  			 new_array << value
  		end
  		return new_array
  	else return new_array
  	end
end


# 3. Refactored Solution

def pad!(array, min_size, value = nil) #destructive
  	if min_size > array.length
  		while array.length < min_size
  			 array << value
  		end
  		array
  	else array
  	end
end

def pad(array, min_size, value = nil) #non-destructive
  	new_array = array.dup
  	if min_size > new_array.length
  		while new_array.length < min_size
  			 new_array << value
  		end
  		new_array
  	else new_array
  	end
end

# 4. Reflection

# Prompt:

# Were you successful in breaking the problem down into small steps?
# Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
# When you refactored, did you find any existing methods in Ruby to clean up your code?
# How readable is your solution? Did you and your pair choose descriptive variable names?
# What is the difference between destructive and non-destructive methods in your own words?

# Reflection:

# We were quite successful in breaking down the problem.  I like to write very detailed pseudocode, which forces me to think through the steps of the problem.

# With such detailed pseudocode, writing the code becomes pretty straightforward.  My pseudocode does look very 'english' so sometimes its a bit of a step to decide what syntax to you.  For example, I had the if statements, but not the while loop explicitly called out.  My partner was helpful in pointing out its necessity.

# Our initial solution above does pass the tests, but we modified it a couple of times to be able to do so.  We had to add the return statements, and then for the non-destructive version, we added the .dup to make sure we weren't modifying the passed array.

# We didn't find any existing methods to clean up our code, but we did remove the explicit return statements.  We thought about using cycle rather than a while loop, but it didn't seem like it would really simplify the code.  I'm sure there are existing methods to help though, and I look forward to seeing more polished solutions in the peer reviews.

# I think our solution is very readable.  Most of the variable names were chosen for us as the arguments, but I think new_array is pretty clear.

# A non-destructive method does not permanently alter the receiving object - it just presents it with modifications or makes a clone.  A destructive method actually modifies the receiving object, and the original is no longer available.





