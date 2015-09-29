
# Hello, full-name!

puts "What is your first name?"
first_name = gets.chomp
puts "What is your middle name?"
middle_name = gets.chomp
puts "What is your last name?"
last_name = gets.chomp
puts "Hello there " + first_name.capitalize + " " + middle_name.capitalize + " " + last_name.capitalize + "!"

# Bigger, better favorite number

puts "What is your favorite number?"
favorite_number = gets.chomp.to_i
better_number = favorite_number + 1
puts "I think " + better_number.to_s + " might be a better number."

In the variables-methods.rb file you created, add a comment at the bottom and answer the following questions:

#Phase 0, Dev Bootcamp
#U2.W1: Variable and Methods Reflection

#Prompt:

# How do you define a local variable?
# How do you define a method?
# What is the difference between a local variable and a method?
# How do you run a ruby program from the command line?
# How do you run an RSpec file from the command line?
# What was confusing about this material? What made sense?
# Add a url for each exercise solution file as well so your peers can easily look at your code.

#Reflection:

# A local variable is a variable defined in the local environment of the program.  It stores a particular object instance.  It should start with a lower-case letter or an underscore.

# A method is a message sent to an object, telling it to perform a specific action.  Like a local variable, a method should begin with a lower-case letter or an underscore.

# A variable is to a method what a noun is to a verb.  A variable is an object instance of some type.  A method is an action that is called on that object, or which the object performs (if it can).

# To run a ruby program from the command line, start with the command 'ruby' to indicate that you want to use the ruby interpreter, and then type the name of the file you wish to execute.  You can also use a flag if you wish.

# To run an rspec file from the command line, start with the command 'rspec' to indicate that you want to use that testing program, and then type the name of the spec file you wish to execute.  You can also use a flag if you wish.

# Most of the material made sense for this challenge.  Not everything from the Well-Grounded Rubyist was totally capiche, but I think I got most of it.  Not sure what rake does really, and I'm not totally clear on what a gem is - other than a packaged library (but how is that different from a regular library? unless its just like a zip is a packaged version of some files?), but those things will come with time I suppose.

# Links:

# Math: https://github.com/ggustilo/phase-0/blob/master/week-4/math/my_solution.rb

# Address: https://github.com/ggustilo/phase-0/blob/master/week-4/address/my_solution.rb
