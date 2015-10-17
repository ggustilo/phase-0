# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
p nested_data[:array][1][:hash]

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array.map! do |element|
  if element.kind_of?(Array)
    element.map! {|inner| inner += 5 }
  else
  element + 5
  end
end

p number_array

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_names.map! do |element|
  if element.kind_of?(Array)
  		element.map! do |element|
  			if element.kind_of?(Array)
  				element.map! {|element| element << "ly"}
  			else element << "ly"
  			end
  		end
  else
      element << "ly"
  end
end

p startup_names

# Reflection:

# What are some general rules you can apply to nested arrays?
# What are some ways you can iterate over nested arrays?
# Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?

# Well, I would start by making sure that you are checking the number of levels in the array.  If there are 5 levels, you are going to need 5 indices, or 5 loops.  Also, look carefully to see what's inside what and where.  Make notes if you need to.  Go step by step.

# You can iterate over nested arrays using nested loops, or you can flatten them and then iterate.  Or you, could go through element by element I suppose, called different indices.

# I used map! in both solutions, which seems to be the method I gravitate towards.  I tend to like destructive methods unless I am told to do otherwise, or I see a specific reason why I should preserve the data as is.  It's just easier to see what's going on, and I like the linear progression of changes.  I could have also used map or each and just made a new array.  Or I could have used collect or collect!.




