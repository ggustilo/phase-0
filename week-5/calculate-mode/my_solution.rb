# Calculate the mode Pairing Challenge

# I worked on this challenge with Andrew Blum.

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# Input: An array of values.
# Output:  An array of the most frequent values.
# Pseudocode:
#   define method mode, which takes one argument - "array"
#   create new Hash
#   iterate through the array
#      if element is not a key in the Hash, create key with value +1
#      if element is a key in the Hash, increment value +1
#   get max value of hash
#   check hash for other occurences of max value - return as hash
#   pull keys for max value hash

# 1. Initial Solution
def mode(array)
  results = {}
  array.each do |e|
    if results.has_key?(e)
      results[e] += 1
    else
      results[e] = 1
    end
  end
  max = results.max_by{|k,v| v}
  results.select!{|k,v| v == max[1]}
  results.keys
end


# 3. Refactored Solution

def mode(array)
  results = {}
  array.each do |e|
    if results.has_key?(e)
      results[e] += 1
    else
      results[e] = 1
    end
  end
  max = results.max_by{|k,v| v}
  results.select!{|k,v| v == max[1]}
  results.keys
end

# 4. Reflection

# Prompt:

# Which data structure did you and your pair decide to implement and why?
# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 
# What issues/successes did you run into when translating your pseudocode to code?
# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?

# Reflection:

# We took the given array and converted it into a hash structure, with the key value pairs being the array item and the number of times it occurred respectively.  From there, we selected out the key-value pairs with the max values, and then pulled the keys into a final array to return.

# Pseudocoding is very important to my process, so I always break down problems into small steps.  This problem was no different.  If anything, its complexity required more detailed pseudocode.

# We thought we would be able to use .max to find the max value, but we ended up using max_by so we could pass in block.  My partner saved us an extra step with the select! method vs just using select.

# We used .each to iterate through the given array.  We thought about using unless when refactoring, but it didn't seem like it would save us anything.  We also thought about setting a default value for the hash, to cut down on the if statement, but that seemed less intuitive and would take the same amount of space.  

#The select! method was useful in finding all max values vs select and starting starting a new container.  We kind of refactored throughout our process, in order to pass the tests, and we ended up with a pretty clean initial solution.  This is pretty common for my process.  Usually refactoring is pretty minimal for me - changing variable names, getting rid of explicit return statements, and occasionally using a different method.  In this case, we couldn't really think of any way to refactor at all.  I'm sure I will get some ideas when peer reviewing.






