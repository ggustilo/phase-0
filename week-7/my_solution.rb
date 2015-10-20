# Virus Predictor

# I worked on this challenge by with .
# We spent     hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data' #Asking for information in the state_data file.  If it has "relative" after require, it retrieves the file if it's in the same folder.  It pulls the code from the other file and includes it in the current file.


class VirusPredictor

  # initialize will take the arguments of state_of-origin, population_density, population, and create instance variable from them for each new instance of the VirusPredictor
  
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  # virus_effects acts as a main method - and the only public method - for the class VirusPredictor.  It calls both predicted_deaths and speed_of_spread, with associated arguments, which are the instance variables defined above in initialize. 
  
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
  # predicted_deaths is a private method, inaccessible outside of VirusPredictor.  It calculates the number_of_deaths depending on population density, where the more densely populated states will have a higher death rate.  It prints a string, which more eloquently explains the number of deaths that will occur in a particular state.
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4)
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3)
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2)
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1)
    else
      number_of_deaths = (@population * 0.05)
    end

    print "#{@state} will lose #{number_of_deaths.floor} people in this outbreak"

  end
  # speed_of_spread is a private method, inaccessible outside of VirusPredictor.   It calculates the speed in months at which the disease will spread, based on population density, such that the higher the population density, the less time it takes for the disease to spread.  It puts a string that more eloquently expresses the speed at which the disease will spread, effectively combining the output from predicted_deaths and speed_of_spread into on sentence.
  def speed_of_spread#in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.

    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

def print_all(hash)
  hash.each_key do |state|
    usa = VirusPredictor.new(state, hash[state][:population_density], hash[state][:population])
    usa.virus_effects
  end

end

print_all(STATE_DATA)
# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?
# What does require_relative do? How is it different from require?
# What are some ways to iterate through a hash?
# When refactoring virus_effects, what stood out to you about the variables, if anything?
# What concept did you most solidify in this challenge?


# The first level of the hash uses a string for the key and the rocket syntax.  The second level of the hash uses the colon syntax, which automatically makes the keys symbols.

# require_relative, like require, requires another file to be included in the program.  Unlike require, however, the '_relative' part means 'look in the same directory as the program is located in', and hence does not need a file path or the file extension.

# You can iterate through a hash using each_key, each_value, map, or any other enumerating method.

# This question is a little confusing.  My partner and I took out the arguments for the methods, both in the individual private method definitions, as well as in virus_effects, because - since they are instance variables - they do not need to be passed to the methods to be available.

# Well, the inner hash syntax was a bit new to me, so that was good to clarify.  Also, we really had to think through how we wanted to try and build a method to create a report for all 50 states - I mean, did we want to do something in the class or outside?  We eventually chose to write a method outside the class, and to create class instances through an iterative process, but we could also have made a self-referencing method in the class.  Thus, I think instance variables and instance methods were really thoroughly reviewed in this challenge.





