# Your Names
# 1) Paul Gaston Gouron
# 2) Gabrielle Gustilo

# We spent 2 hours on this challenge.

# Change variable names
# Refactor error counter
# Add restocking feature
# Rewrite messages for clearer instructions

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, order_quantity)
  # Data
  pantry = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  if pantry.has_key?(item_to_make)

          stock = (pantry[item_to_make] - order_quantity)

          p "We have to make #{order_quantity} #{item_to_make}. By processing this order, the stock of #{item_to_make} will be #{stock} #{item_to_make}." 


          if stock > 0
                p "We have enough #{item_to_make} to proceed with the order!"
          elsif stock == 0
                p "We just have enough stock. The next order will probably put us out of stock. We should make more #{item_to_make}."
          else 
            p "We don't have enough stock...to be able to proceed with the order.  We should make #{stock.abs} #{item_to_make}."
          end 
          
          p "We now have:" 
          
          pantry.each do |key,value|
          pantry[item_to_make] = stock
         
          p "#{key.capitalize} : #{value}"
          end
    
    else
    raise ArgumentError.new("#{item_to_make} is not on our menu.")
    end    
end

p serving_size_calc("pie", 1)
p serving_size_calc("pie", 7)
p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

# Reflection:

# What did you learn about making code readable by working on this challenge?
# Did you learn any new methods? What did you learn about them?
# What did you learn about accessing data in hashes? 
# What concepts were solidified when working through this challenge?

# Well, I learned that variable names are really really important.  If they are unclear or misleading, it's hard to understand what the code does.  Also, you should always access hash values through the keys and not use arbitrary arrays for no reason.  Also, comments would be nice.

# This was the first time that I saw the values_at method.  In another situation, I'm sure it would be super useful to have an array of hash values.  But in this case, it was really overkill.

# The major concepts that were solidified for me were a) name your variables descriptively; and b) don't unnecessarily complicate your code - be clear to your purpose.  O, and COMMENT YOUR CODE.

# :)















