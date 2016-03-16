# Your Names
# 1) Riley 
# 2) Buck

# We spent 1.5 hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_servings)

  # Bakery's library of how many people each bakery item serves.
  baked_goods_servings = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  # Raise error if the input item isn't in the bakery's library.
  raise ArgumentError.new("#{item_to_make} is not a valid input") if !baked_goods_servings.keys.include?(item_to_make)

  # How many people does the item serve?
  serving_size = baked_goods_servings[item_to_make]

  # How many people aren't served if servings aren't exact and we round down.
  remaining_servings = num_of_servings % serving_size

  # Print out how many of the bakery item to buy to feed desired people, and how many servings
  # will be left over.
  if remaining_servings == 0
    "Calculations complete: Make #{num_of_servings / serving_size} of #{item_to_make}"
  else
    "Calculations complete: Make #{(num_of_servings / serving_size) + 1} of #{item_to_make}. (There will be #{serving_size - remaining_servings} leftover servings)"
  end

end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection
=begin

- What did you learn about making code readable by working on this challenge?

  - Bad variable names are the worst!  It's bad enough if they aren't descriptive,
    but it's really awful if they're misleading.
  - Look for opportunities to make code DRY.
  - Look for things that have been made more complicated than they need to be.

- Did you learn any new methods? What did you learn about them?

  - 'include' can be used to see if a value is in an array.

- What did you learn about accessing data in hashes? 

  - If you really wanted to, you could use a convoluted way to access values.

- What concepts were solidified when working through this challenge?

  - The importance of using accurate descriptive variable names, and good
    concise comments.
  - Often if the code seems more complicated than it needs to be, you are correct.

=end