 # In this challenge, you will make your own method to automatically create accountability groups from a list of names. You'll want to make of the People in your cohort. Try to get everyone into an accountability group of 4 or 5. Be sure everyone is in a group of at least 3 -- It's no fun if someone is in a group by themself or with one other person. 

# This is a creative challenge and you can make it as easy or difficult as you would like. Decide what an MVP (Minimum Viable Product) will look like and what the output should be. This is part of the challenge.

#Input: An array of names
#Output: A hash with accountability groups as keys and arrays of 5 names as values.
#Pseudocode:
	# get array of cohortians
	# define method make_groups which takes one argument - an array of strings
	# create empty hash
	# create variable for number of groups
	# WHILE number of groups is not 0
	# 	add key with group number and empty array value to hash
	# 	decrement number of groups
	# END
	# create counter variable
	# WHILE array is not empty
	#   destructively slice off 5 values
	# 	increment counter
	# 	add the selection to the hash key of counter number
	# END
	# Return hash

#MVP will take into account our lucky number of cohortians (55).  It will be a method that grabs sets of 5 sequential people and adds them to a hash of 11 accountability groups.

# To add complexity, allow for an array of a different size, and/or select people for group randomly.


copperheads = [
"Joshua Abrams", "Syema Ailia", "Kris Bies", "Alexander Blair",
"Andrew Blum", "Jacob Boer", "Steven Broderick", "Ovi Calvo",
"Danielle Cameron", "Eran Chazan", "Jonathan Chen", "Un CHoi",
"Kevin Corso", "Eric Dell'Aringa", "Eunice Do", "Ronny Ewanek",
"John Paul Chaufan Field", "Eric Freeburg", "Jeffery George",
"Jamar Gibss", "Paul Gaston Gouron", "Gabrielle Gustilo",
"Marie-France Han", "Noah Heinrich", "Jack Huang", "Max Iniguez",
"Mark Janzer", "Michael Jasinski", "Lars Johnson", "Joshua Kim",
"James Kirkpatrick", "Christopher Lee", "Isaac Lee",
"Joseph Marion", "Kevin Mark", "Bernadette Masciocchi",
"Bryan Munroe", "Becca Nelson", "Van Phan", "John Polhill",
"Jeremy Powell", "Jessie Richardson", "David Roberts",
"Armani Saldana", "Chris Savage", "Parminder Singh", "Kyle Smith",
"Aaron Tsai", "Douglas Tsui", "Deanna Warren", "Peter Wiebe",
"Daniel Woznicki", "Jay Yee", "Nicole Yee", "Bruno Zatta"]

# Initial Solution

def make_groups(array)
	
	groups = {}
	number_of_groups = 0
	
	number_of_groups = array.length / 5
	while number_of_groups != 0
			groups["group #{number_of_groups}"] = []
			number_of_groups -= 1
	end
	
	counter = 0
	until array.empty?
		selection = array.slice!(0..4)
		counter += 1
		groups["group #{counter}"].replace(selection)
	end

	p groups
end

make_groups(copperheads)

# # Refactored Solution

def populate_hash(hash, counter)
	while counter != 0
		hash["group #{counter}"] = []
		counter -= 1
	end
end

def make_groups(array)
	
	groups = {}
	number_of_groups = 0
	group_size = 0
# take into account arrays of different sizes, with a max size of 5 and a min size of 3
	if array.length % 5 == 0
		number_of_groups = array.length / 5
		group_size = 5
		populate_hash(groups, number_of_groups)

	elsif array.length % 4 == 0
		number_of_groups = array.length / 4
		group_size = 4
		populate_hash(groups, number_of_groups)

	else 
		number_of_groups = (array.length/3.to_f).ceil
		group_size = 3
		populate_hash(groups, number_of_groups)
	end
# add contents of array in slices to hash groups
	counter = 0
	until array.empty?
		selection = array.slice!(0..group_size-1)
		counter += 1
		groups["group #{counter}"].replace(selection)
	end
# make sure every group has three people, or combine them
	groups_values = groups.values.each
	if groups_values.size < 3
		groups["group #{number_of_groups-1}"] + groups["group #{number_of_groups}"]
		groups.delete("group #{number_of_groups}")
		groups["group #{number_of_groups-1}"] = groups["group #{number_of_groups-1}"].flatten!
	end
	p groups
end

make_groups(copperheads)

# Reflection

# Prompt: 

# What was the most interesting and most difficult part of this challenge?
# Do you feel you are improving in your ability to write pseudocode and break the problem down?
# Was your approach for automating this task a good solution? What could have made it even better?
# What data structure did you decide to store the accountability groups in and why?
# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?

# Reflection:

# For me, the most interesting part of this challenge was working with all the different data types and tracking how variables changed throughout the program - feeding arrays as hash values to enumerables etc.  The most difficult part of the challenge was timeboxing, and figuring out what was an acceptable MVP.  The challenge was pretty open-ended, so I wasn't sure how far to go.

# I think its pretty easy to break down the problem into pseudocode initially, but there are always things you don't anticipate.  Once you get into the nitty gritty details of the problem, you always have to rework it a bit.  I think as I become a more experienced programmer, I'll become better at anticipating issues.

# I think my approach was realistic and I was ok with my solution.  I really think there could be a good way to use the group_by method - maybe as an enumerator? - for a cleaner solution.  Unfortunately, I just wasn't clear-minded enough to come up with a workable algorithm for the group-by block.

# I decided to store the accountability groups in a hash.  It just seemed like the most intuitive data structure for what was required.  With a hash you can keep all the groups under a blanket structure, instead of implementing individual arrays.  Still, if I had time, I would have liked to try it using arrays instead.  I think it might have been a bit easier in the end.

# Refactoring was definitely a challenge.  I added a bit more complexity to the program, allowing for an array of any size.  I also used a secondary method to streamline the main method.  I really wanted to refactor using group_by or some other Ruby method to simplify my solution, but I was running into bugs and running out of time.  I did end up using an enumerable in the length check at the end of the refactored solution, so that was cool.

# All in all, I am reasonably satisfied with my solution.  I wish that a) I had used version control a bit better so you could see the transition in my refactored solution above and b) I had a bit more time to play with some other Ruby methods.  All well.  Next time. :)




