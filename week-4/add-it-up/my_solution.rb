# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge Danielle Cameron

# 0. Pseudocode
	# Input: Array of integers
	# Output: Sum of integers in array
	# Steps to solve the problem.
		# 1. Set up initial total variable
		# 2. Use for loop to iterate through array until end of array
		# 3. Add each array index value to total
		# 4. Return total

# 1. total initial solution
	# def total(given_array)
	# 	sum_of_array_values = 0
	# 	for i in given_array
	# 		sum_of_array_values += i
	# 	end
	# 	sum_of_array_values
	# end

# 3. total refactored solution

	def total(given_array)
		sum_of_array_values = 0
		given_array.each { |num|
			sum_of_array_values += num
		}
		sum_of_array_values
	end

# 4. sentence_maker pseudocode
	# Input: Array of strings
	# Output: A sentence combining all the strings
	# Steps to solve the problem.
		# 1. Set up initial sentence variable
		# 2. Use for loop to iterate through array until end of the array
		# 	3. Add each array index value (string) to the sentence
		# 	4. Add a space after each index value
		# 5. Add a period at the end, outside the for loop.
		# 6. Capitalize the first word in the sentence.
		# 7. Return sentence

# 5. sentence_maker initial solution

	# def sentence_maker(array_of_strings)
	# 	sentence = ""
	# 	for i in array_of_strings
	# 		sentence += i.to_s + " "
	# 	end
	# 	sentence = sentence.capitalize.chomp(' ') + "."
	# 	sentence
	# end

# 6. sentence_maker refactored solution
	
	def sentence_maker(array_of_strings)
		sentence = ""
		array_of_strings.each { |tiny_string|
			sentence += tiny_string.to_s + " "
		}
		sentence.capitalize.chomp(' ') + "."
	end









