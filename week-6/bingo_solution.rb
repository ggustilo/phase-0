# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.

# The first number in the sub-arrays correspond to the letter "B", the second "I", the third "N", the fourth "G", and the fifth "O". So if the call was N34, you would look in the third column for the number 34. If the number is on your board, you'll replace it with an "X."
# Keep all of the logic and variables inside of the class BingoBoard. Method calls should be outside.
# Create a method to call letters and numbers (like B43). It will need to generate a letter ( "B", "I", "N", "G", "O") and a number from 1 to 100.
# Create a method to check whether that column has that number in the existing bingo_board.
# If the number is in the column, replace it with an "X".
# Display the new board to the console (Make it pretty).

# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  # define method to generate combo
  #     create array for letters
  #     create an instance variable
  #     set it equal to a random letter from the array
  #     create another instance variable
  #     set it equal to a random number between 1 and 100

# Check the called column for the number called.
  # define method check_column
  #     set each letter in bingo equal to index number
  #     check letter in instance variable
  #     Iterate through each element in bingo_board
    
# If the number is in the column, replace with an 'x'
      # IF the element in the instance variable index equals the instance variable number
      #   replace it with 'x'
      # print "bingo!" to console

# Display the board to the console (prettily)
    # define method to print board
    #   print each element in the array on a new line

# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def generate_combo
    letters = ['B', 'I', 'N', 'G', 'O']
    @column = rand(0..4)
    @letter = letters[@column]
    @number = rand(1..100)
    @combo = "#{@letter}#{@number}"
    p @combo
  end

  def check_column
    @bingo_board.map! do |row|
      if row[@column] == @number
        row[@column] = 'X'
        p row
      else p row
      end
    end
  end

end

# Refactored Solution

class BingoBoard

  attr_reader :bingo_board

  def initialize(board)
    @bingo_board = board
  end

  def generate_letter
    letters = ['B', 'I', 'N', 'G', 'O']
    @column = rand(0..4)
    @letter = letters[@column]
  end
  
  def generate_number
    @number = rand(1..100)
  end
  
  def generate_combo
    self.generate_letter
    self.generate_number
    @combo = "#{@letter}#{@number}"
    p @combo
  end

  def check_column
    self.generate_combo
    @bingo_board.map! do |row|
      if row[@column] == @number
        row[@column] = 'X'
        p row
      else p row
      end
    end
  end

end


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)

new_game.check_column

#Reflection

# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
# What are the benefits of using a class for this challenge?
# How can you access coordinates in a nested array?
# What methods did you use to access and modify the array?
# How did you determine what should be an instance variable versus a local variable?
# What do you feel is most improved in your refactored solution?

# Pseudocoding this challenge was pretty straightforward, considering the instructions already contain a partial outline.  I'm pretty happy with my pseudocoding style, although I could be a bit more generic about describing how I plan to implement the steps.

# Using a class will allow us to create new bingo board instances, so we can play the game multiple times.

# You can access coordinates in a nested array by calling particular index numbers, or by iterating through the values in nested loops.

# I used map! to iterate through the board, and then called the index number associated with the bingo letter to check each specific array.

# If I had to access a variable from another method, I used an instance variable.  Local variables can only be accessed within the the method they're defined in.

# I refactored my solution into smaller methods, and then chained them using calls to self.  Honestly, I'm not sure its a better solution, but it seemed more in line with keeping the code dynamic and reusable.




