# PezDispenser Class from User Stories

# I worked on this challenge by myself.
# I spent 1 hour on this challenge.


# 1. Review the following user stories:
# - As a Pez user, I'd like to be able to "create" a new Pez dispenser with a group of flavors that
#      represent Pez so it's easy to start with a full Pez dispenser.
# - As a Pez user, I'd like to be able to easily count the number of Pez remaining in a dispenser
#      so I can know how many are left.
# - As a Pez user, I'd like to be able to take a Pez from the dispenser so I can eat it.
# - As a Pez user, I'd like to be able to add a Pez to the dispenser so I can save a flavor for later.
# - As a Pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order
#      of the flavors coming up.

# Pseudocode

# Define a class called PezDispenser
# Define an initialize method, which takes a size argument
# 	define an array of flavors
# 	define a size of pez which is based on size
# 	create a random array of flavors the size of pez

# 	define instance variables:
# 		flavors will equal the random array of flavors the size of pez
# 		size will equal size of flavors array

# Define a method pez_count
# 	gives current size of pez

# Define a method add_pez, which takes argument flavor
# 	adds pez of flavor given to end of pez array

# Define a method eat_pez
# 	removes the pez at the front of the array

# Define a method pez_view
# 	print out all the items in the array in order


# Initial Solution

class PezDispenser

	def initialize(flavors)
		@flavors = flavors;
	end

	
	def pez_count()
		p @flavors.length;
	end

	
	def add_pez(flavor)
		@flavors.push(flavor.to_s.downcase);
	end

	
	def get_pez() 
		@flavors.shift();
	end

	
	def see_all_pez() 
		p @flavors;
	end

end



# Refactored Solution

class PezDispenser

	def initialize(flavors)
		@flavors = flavors;
	end

	
	def pez_count()
		p @flavors.length;
	end

	
	def add_pez(flavor)
		@flavors.push(flavor);
	end

	
	def get_pez() 
		@flavors.shift();
	end

	
	def see_all_pez() 
		@flavors;
	end

end

# # DRIVER TESTS GO BELOW THIS LINE

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)
puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"
puts "Here's a look inside the dispenser:"
puts super_mario.see_all_pez
puts "Adding a banana pez."
super_mario.add_pez("banana")
puts "Now you have #{super_mario.pez_count} pez!"
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
puts "Now you have #{super_mario.pez_count} pez!"

# Reflection

# Well, between the user stories and the tests, this challenge was a lot simpler than I expected.  They give you everything, including all the flavors.  My only comment would be that there are traditionally 12 pez candies in a dispenser, not nine.

#-------------------------------------------------------------

#FizzBuzz Super Edition

# I worked on this challenge by myself.
# This challenge took me [#] hours.


# Pseudocode
# iterate through the given array
# 	IF item divided by 15 is zero
# 		replace with 'fizzbuzz'
# 	ELSIF item divided by 5 is zero
# 		replace with 'buzz'
# 	ELSIF item divided by 3 is zero
# 		replace with 'fizz'
# 	ELSE move on
# print new array



# Initial Solution

def super_fizzbuzz(array)
	array.map! do |num|
		if num % 15 == 0
			num = 'FizzBuzz'
		elsif num % 5 == 0
			num = 'Buzz'
		elsif num % 3 == 0
			num = 'Fizz'
		else num
		end
	end
	p array
end


# Refactored Solution

def super_fizzbuzz(array)
	array.map! do |num|
		if num % 15 == 0
			num = 'FizzBuzz'
		elsif num % 5 == 0
			num = 'Buzz'
		elsif num % 3 == 0
			num = 'Fizz'
		else num
		end
	end
end


# Reflection

#Honestly, there wasn't too much to refactor.  This was pretty straightforward.  I took out the print statement because it was unnecessary to test.