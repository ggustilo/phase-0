# # Research Methods

# # I spent [] hours on this challenge.

# i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
# my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# # #

# Person 2

# pseudocode:
    # iterate through the array
    # if array item is a number,
        # add thing_to_modify to the number
    # else, leave the item alone
    # return the array(?)


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
      source.map do |k, v|
       source[k] = v += thing_to_modify
     end
    return source
end

# Identify and describe the Ruby method(s) you implemented.
# I tried a bunch of different methods, but only some of them worked.  Take a look below.

# Array methods:
# each : Doesn't work, because it doesn't permanently alter the array - non-destructive
# collect : Doesn't work, because it doesn't permanently alter the array - non-destructive
# collect! : Works - destructively alters the array
# map : Doesn't work, because it doesn't permanently alter the array - non-destructive
# map! : Works - destructively alters the array
# 
# Hash methods:
# each : Works - destructively alters the array
# each_value : Doesn't work, because it doesn't permanently alter the array - non-destructive
# values : Doesn't work, because it doesn't permanently alter the array - non-destructive
# map : Works - destructively alters the array
# map! : Doesn't exist for hash
# collect : Works - destructively alters the array
# collect! : Doesn't exist for hash
