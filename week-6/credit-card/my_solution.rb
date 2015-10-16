# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# For this challenge, you will need to break down the algorithm into the following steps. You will probably want to break these down into individual methods that are called when you run the #check_card method.

# Starting with the second to last digit, double every other digit until you reach the first digit.

# Sum all the untouched digits and the doubled digits (doubled digits need to be broken apart, 10 becomes 1 + 0).

# If the total is a multiple of ten, you have received a valid credit card number!

# Example given 4563960122001999
# Origin: 4   5   6   3   9   6   0   1   2   2   0   0   1   9   9   9
# Step 1: 8   5  12   3  18   6   0   1   4   2   0   0   2   9  18   9
# Step 2: 8 + 5 + 1 + 2 + 3 + 1 + 8 + 6 + 0 + 1 + 4 + 2 + 0 + 0 +2+ 9 + 1 + 8 + 9
# Step 3: 70 (total above) % 10 == 0
# Step 4: Profit
# Your class will need to return true or false when you call the #check_card method. Your class needs to be initialized with a credit card number that is exactly 16 digits -- otherwise you should receive an ArgumentError.

# Pseudocode

# Input: credit card number
# Output: true or false
# Steps:
# # => Intialize method:
# 		IF credit card number is 16 digits
# 			create instance variable
# 		ELSE raise ArgumentError
# # => Array method:
# 		define method
# 		take credit card number
# 		turn into string and split by digit
# 		turn it into an array
# 		reverse the array
# # => Double numbers method:
# 		define method
# 		iterate through array using value and index
# 		IF index is odd
# 			turn value into num and double
# 		ELSE turn value into num
# # => Get single numbers method:
# 		define method
# 		iterate through the array
# 		turn every element into a string
# 		smoosh the strings together
# 		split the string by digit
# 		iterate through array
# 		turn every element back into a number
# # => Check number method
# 		sum all numbers in the array
# 		IF the sum divide by 10 is zero
# 			return true
# 		ELSE return false
# # => Driver method
# 		define method to check credit card number
# 		call all other methods in order
# # => Create new instance and test



# Initial Solution


# class CreditCard
  
#   def initialize(cc_num)
#     if cc_num.to_s.size == 16
#       @cc_num = cc_num
#     else raise ArgumentError
#     end
#   end
#   #step1 
#   def cc_array
#    #create array from numbers
#     @cc_num_array = @cc_num.to_s.split('').to_a
#     #reverse array
#     @reverse_array = @cc_num_array.reverse!
#     p @reverse_array
#   end
  
#   def double_nums
#     #from index[1], double every odd number    
#     @reverse_array.map!.with_index do | num, index |
#       if index.odd?
#         num.to_i * 2
#       else
#         num.to_i
#       end
#     end
#     @doubled_reverse_array = @reverse_array
#     p @doubled_reverse_array
#   end
  
#   #step2
#   def single_int
#     #iterate array and turn element into string
#     @doubled_reverse_array.map! do |element|
#       element.to_s
#     end  
#      #smoosh strings together 
#     #split apart by digit
#     @doubled_reverse_array = @doubled_reverse_array.reduce(:+).split('')
#      #convert back to integer
#     @doubled_reverse_array_by_digit = @doubled_reverse_array.map! {|num| num.to_i}
#     p @doubled_reverse_array_by_digit
#   end

#   #step3
#   def num_check
#     sum = @doubled_reverse_array_by_digit.reduce(:+)
#     p sum
#   #sum using reduce 
#     if sum % 10 == 0
#       p true
#     else
#       p false
#     end
#   end
#   #if sum dived by 10 has no remander, return true
  
#   def check_card
#     self.cc_array
#     self.double_nums
#     self.single_int
#     self.num_check
#   end

# end

# gabi_number = CreditCard.new(4563960122001999)
# gabi_number.check_card


# Refactored Solution

class CreditCard
  
  def initialize(cc_num)
    if cc_num.to_s.size == 16
      @cc_num = cc_num
    else raise ArgumentError
    end
  end
 
  def cc_array
    @cc_array = @cc_num.to_s.split('').to_a.reverse!
  end
  
  def double_nums  
    @cc_array.map!.with_index do | num, index |
      if index.odd?
        num.to_i * 2
      else
        num.to_i
      end
    end
    @doubled_reverse_array = @cc_array
  end
  
  def single_int
    @doubled_reverse_array.map! do |element|
      element.to_s
    end  
    @doubled_reverse_array = @doubled_reverse_array.reduce(:+).split('').map! {|num| num.to_i}
  end

  def num_check
    sum = @doubled_reverse_array.reduce(:+)
    if sum % 10 == 0
      p true
    else
      p false
    end
  end
  
  def check_card
    self.cc_array
    self.double_nums
    self.single_int
    self.num_check
  end

end

gabi_number = CreditCard.new(4563960122001999)
gabi_number.check_card

