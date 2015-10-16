#Attr Methods

# I worked on this challenge by myself.

# I spent [#] hours on this challenge.

# Pseudocode:
# open class NameData
# 	create attr_accessor for name
# 	define initialize method
# 	create instance variable with my name
# open class Greetings
# 	define initialize method
# 	create instance variable which is equal to new NameData object
# 	define hello method
# 	put message
# write driver code


class NameData
  attr_accessor :name

  def initialize
    @name = "Gabi"
  end
end

class Greetings

  def initialize
  @instance = NameData.new
  end

  def hello
    puts "Hey there, #{@instance.name}!"
  end

end

greet = Greetings.new
greet.hello

# # Reflection

# Release 1:

# What are these methods doing?
	
	# The initialize method is setting default values for the instance variables age, name, and occupation.  The methods following are written to read this variables, and then change them.

# How are they modifying or returning the value of instance variables?
	
	# Well, they are not using attr_ shortcuts.  Instead, they are rather clumsily named.  At least the modification methods use the equal at the end to indicate that they are reassignment methods.  There are also some fancy pauses and dots in there to make it feel like more of a process when you run the file.

# Release 2:

# What changed between the last release and this release?
		
	# The age reader method was changed.

# What was replaced?

	# The method for reading age was replaced with an attr_reader method.

# Is this code simpler than the last?

	# Certainly, it is.

# Release 3:

# What changed between the last release and this release?

	# The age modification method was changed.

# What was replaced?

	# The method for modifying age was replaced with an attr_writer method.

# Is this code simpler than the last?

	# Indeedy, it is.

# Release 6:

# What is a reader method?

	# A reader method is a method that allows you to see the current value of an instance variable.

# What is a writer method?

	# A writer method is a method that allows you to modify the current value of an instance variable.

# What do the attr methods do for you?

	# The attr methods give you shortcuts for simple reader and writer methods.

# Should you always use an accessor to cover your bases? Why or Why not?

	# No, you should not allow the ability to modify a variable unless necessary.  It can adversely affect the security of your data.

# What is confusing to you about these methods?

	# I find these methods fairly straight forward.  The only question I have is: is there a way to use the attr methods if you want more complicated reader or writer functions? Say your instance variable is assigned to an array, and you only want a writer method that adds or removes values from the array, not reassigns the instance variable.  I don't think you can use attr_writer for this; you need a separate method.  But, I'm not sure - maybe there is a neat way to do it in Ruby.

