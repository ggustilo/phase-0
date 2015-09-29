
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