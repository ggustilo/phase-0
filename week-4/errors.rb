# Analyze the Errors

# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

 cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
   end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# => errors.rb
# 2. What is the line number where the error occurs?
# => line 170
# 3. What is the type of error message?
# => syntax error
# 4. What additional information does the interpreter provide about this type of error?
# => unexpected end of input, expecting keyword end
# 5. Where is the error in the code?
# => After the last line in the program.
# 6. Why did the interpreter give you this error?
# => Because it was waiting for another end to the while loop above, and never got it.

# --- error -------------------------------------------------------

south_park = nil

# 1. What is the line number where the error occurs?
# => line 36
# 2. What is the type of error message?
# => in 'main'
# 3. What additional information does the interpreter provide about this type of error?
# => undefined local variable 'south_park'
# 4. Where is the error in the code?
# => at south_park
# 5. Why did the interpreter give you this error?
# => because we didn't def the variable

# --- error -------------------------------------------------------

def cartman(param)
	puts "silly"
end

# 1. What is the line number where the error occurs?
# => line 51
# 2. What is the type of error message?
# => undefined method
# 3. What additional information does the interpreter provide about this type of error?
# => for main:Object(NoMethodError)
# 4. Where is the error in the code?
# => at cartman()
# 5. Why did the interpreter give you this error?
# => because we didn't define the method

# --- error -------------------------------------------------------

def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase

# 1. What is the line number where the error occurs?
# => line 68
# 2. What is the type of error message?
# => wrong number of arguments
# 3. What additional information does the interpreter provide about this type of error?
# => (1 for 0) (Argument Error)
# 4. Where is the error in the code?
# => at the end of 'cartmans_phrase'
# 5. Why did the interpreter give you this error?
# => Because we called the method with an argument, and there isn't any in the definition of the method


# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says("Fuck you guys")

# 1. What is the line number where the error occurs?
# => line 92
# 2. What is the type of error message?
# => wrong number of arguments
# 3. What additional information does the interpreter provide about this type of error?
# => (0 for 1)(ArgumentError)
# 4. Where is the error in the code?
# => after the method call cartman_says
# 5. Why did the interpreter give you this error?
# => Because we called the method without passing it an argument.



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', "Butters")

# 1. What is the line number where the error occurs?
# => line 109
# 2. What is the type of error message?
# => wrong number of arguments
# 3. What additional information does the interpreter provide about this type of error?
# => (1 for 2)(ArgumentError)
# 4. Where is the error in the code?
# => In the arguments of the method call
# 5. Why did the interpreter give you this error?
# => Because we called the method with one argument, not two.

# --- error -------------------------------------------------------

"Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?
# => line 128
# 2. What is the type of error message?
# => TypeError
# 3. What additional information does the interpreter provide about this type of error?
# => String can't be converted to Fixnum
# 4. Where is the error in the code?
# => All of line 128
# 5. Why did the interpreter give you this error?
# => Either because the elements are reversed (string * num) or because there is no ".to_i" at the end of the string - which would evaluate to 0.


# --- error -------------------------------------------------------

amount_of_kfc_left = 20/1


# 1. What is the line number where the error occurs?
# => line 144
# 2. What is the type of error message?
# => Zero Division Error
# 3. What additional information does the interpreter provide about this type of error?
# => divided by 0
# 4. Where is the error in the code?
# => at 20/0
# 5. Why did the interpreter give you this error?
# => Because you can't divide by 0 - math rules

# --- error -------------------------------------------------------

# require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# => line 160
# 2. What is the type of error message?
# => Load Error
# 3. What additional information does the interpreter provide about this type of error?
# => Cannot load such a file
# 4. Where is the error in the code?
# => The string
# 5. Why did the interpreter give you this error?
# => That file does not exist in my directory


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

# Which error was the most difficult to read?
# How did you figure out what the issue with the error was?
# Were you able to determine why each error message happened based on the code? 
# When you encounter errors in your future code, what process will you follow to help you debug?

# I spotted all the errors before even running the program (with a title like errors.rb, let's just say I was prepared), but I think the first one was actually the hardest to read.  If I hadn't JUST read about how the variable has to go first in assignment, I probably would have been very confused.  I mean, after the equal sign? What would that even mean, given that it otherwise looked just fine? It was knowledge of ruby semantics, more than the error message, that helped me with that one.

# The errors did seem pretty obvious to me, since I was prepared for them, although I didn't always know how to fix them exactly.  I think the third one was the hardest to figure out how to fix, but there was a similar example in the debugging video, so that was helpful.

# I was able to determine all the errors.  Yup yup.

# When I encounter errors in my future code, I will use a very similar process to debug.  With the exception of some of the 'you forgot to close that' and 'you tried to use this and you shouldn't'-type errors, I find the line really helpful.  But the type of error is also helpful.  If I don't understand it, may the Google be with me.



