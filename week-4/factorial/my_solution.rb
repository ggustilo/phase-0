# Factorial

# I worked on this challenge with Danielle Cameron.
# [.25] Hours

#Psuedocode
	#Input: Non-negative integer
	#Output: A non-negative integer that is the factorial of the input
	#Steps:
		#Defining a factorial method
		#Use while loop to run until number != 0
		#Within loop have a total variable that is the counter, taking total * number
		#use number to count down
		#return total

# Your Solution Below

def factorial(number)
total = 1	
	while number != 0
		total *= number
		number = number -1
	end
	total
end