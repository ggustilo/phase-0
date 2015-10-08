# # Research Methods

# # I spent [] hours on this challenge.

# i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
# my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# # Person 1's solution
# def my_array_finding_method(source, thing_to_find)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_finding_method(source, thing_to_find)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# # Identify and describe the Ruby method(s) you implemented.
# #
# #
# #

# Person 2

# pseudocode:
    # iterate through the array
    # if array item is a number,
        # add thing_to_modify to the number
    # else, leave the item alone
    # return the array(?)

# def my_array_modification_method!(source, thing_to_modify)
#     source.each do |item|
#       if item.is_a? Integer
#           item += thing_to_modify
#           puts item
#       else item
#       end
#     return source
#     end
# end

def my_array_modification_method!(source, thing_to_modify)
    source.collect! do |item|
        if item.is_a? Integer 
            item += thing_to_modify
        else item
      end
     end
    return source
end

# pseudocode:
    # iterate through the hash
    # add thing_to_modify to each hash value
    # return the hash

def my_hash_modification_method!(source, thing_to_modify)
      source.each_value do |value|
        value += thing_to_modify
     end
    return source
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# # Person 3
# def my_array_sorting_method(source)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_sorting_method(source)
#    source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# # Identify and describe the Ruby method(s) you implemented.
# #
# #
# #


# # Person 4
# def my_array_deletion_method!(source, thing_to_delete)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_deletion_method!(source, thing_to_delete)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# # Identify and describe the Ruby method(s) you implemented.
# #
# #
# #


# # Person 5
# def my_array_splitting_method(source)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_splitting_method(source, age)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# # Identify and describe the Ruby method(s) you implemented.
# #
# #
# #


# # Release 1: Identify and describe the Ruby method you implemented. Teach your
# # accountability group how to use the methods.
# #
# #
# #


# # Release 3: Reflect!
# # What did you learn about researching and explaining your research to others?
# #
# #
# #
# #