What does puts do?
What is an integer? What is a float?
What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?

Puts returns nil and prints the output to the console with a new line.

An integer is a number without a decimal point - a 'whole' number, as they called it in second grade.  A float is a number with a decimal point.

When you divide a float by a float, the answer will be a float and the computer can accurately calculate any remainder.  However, if you divide an integer by an integer, the answer must be an integer, meaning that the computer will not be able to give you any remainder.  In such cases, if there is a remainder, the computer will round down.

Thus, if you divide 9.0 by 2.0 (9.0/2.0), the answer will be 4.5.  However, if you divide 9 by 2 (9/2), the answer will be 4.  The answer must be an integer when you divide two integers, and the computer rounds down if there would have been a remainder.

#hours_in_a_year

puts 24 * 365

#minutes_in_a_decade

puts 60*24*365*10

-----

Phase 0, Dev Bootcamp
#U2.W1: Numbers, Letters and Variable Assignment Reflection

##Prompt

How does Ruby handle addition, subtraction, multiplication, and division of numbers?
What is the difference between integers and floats?
What is the difference between integer and float division?
What are strings? Why and when would you use them?
What are local variables? Why and when would you use them?
How was this challenge? Did you get a good review of some of the basics?

##Reflection

Ruby uses the '+' method for addition, the '-' method for subtraction, the '*' method for multiplication, and the '/' method for division.  To execute mathematical methods, one or more of the elements must be a number.

Integers are 'whole' numbers without a decimal point; floats are decimal numbers.  When you divide an integer by another integer, the answer must also be an integer. Thus, if there is a remainder, Ruby will simply round down and not display the remainder.  When you divide floats, on the other hand, Ruby can display the remainder because floats are decimal numbers and the answer is a float as well.

Strings are characters 'strung' along together within quotation marks.  You use them when you want to treat a bunch of characters together as a single object.

Local variables are variables defined in the local context of a program.  They are used to store values like a number or a string.  When you store something in a variable, you can call it over and over again.  Also, if the value is long, you don't have to type it out so many times!

This challenge was pretty straightforward and easy for me, but it was a good review just to refresh my memory a little big about data types in Ruby.

##Links:

Defining variables:
https://github.com/ggustilo/phase-0/blob/master/week-4/defining-variables.rb

Simple string methods:
https://github.com/ggustilo/phase-0/blob/master/week-4/simple-string.rb

Local variables and basic arithmetical operations:  https://github.com/ggustilo/phase-0/blob/master/week-4/basic-math.rb