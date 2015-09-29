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