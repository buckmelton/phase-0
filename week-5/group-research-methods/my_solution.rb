# Research Methods

# I spent 2.5 hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

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

# # Person 2
# def my_array_modification_method!(source, thing_to_modify)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_modification_method!(source, thing_to_modify)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# # Identify and describe the Ruby method(s) you implemented.
# #
# #
# #


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


# Person 5
def my_array_splitting_method(source)

  split_array = []
  array_1 = []
  array_2 = []

  source.each do | item |
    if item.is_a?(Integer)
      array_1.push(item)
    else
      array_2.push(item)
    end
  end

  split_array.push(array_1)
  split_array.push(array_2)

  return split_array

end

def my_hash_splitting_method(source, age)

  split_array = []
  array_1 = []
  array_2 = []

  source.keys.each do | the_key |
    new_item = [the_key, source[the_key]]
    if source[the_key] <= 4
      array_1.push(new_item)
    else
      array_2.push(new_item)
     end
  end

  split_array.push(array_1)
  split_array.push(array_2)

  return split_array

end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
# I implemented my_array_splitting method and my_hash_splitting method.
#
# my_array_splitting method takes one array, and splits it into two arrays: the first array containing all the integers
# from the original array, and the second array containing all the other values from the original array.  These two
# arrays are then packaged together into an enclosing array.
# 
# To use my_array_splitting_method, pass it an array of values, some integers and some not.
#
# my_hash_splitting_method takes a hash where they key-value pairs are pet names and their ages, and creates two
# arrays: the first array containing all the pets with ages 4 and under, their names and ages expressed as an array of
# two; and the second array containing all the pets aged over 4 similarly.  These two arrays of arrays are then
# packaged together into an enclosing array.
#
# To use my_hash_splitting_method, pass it a hash of pet names and ages.
#
# To use the Ruby Docs, I initially made my best guess as to what the best methods were.  When I received an error
# message, I'd go to the Ruby Docs and Filter on the Class name that I received the error for.  I would scan the
# written text on that Class.  Sometimes it would be helpful and sometimes not.  If not, I wouuld scan the method
# names down the left hand side.  Again, sometimes this was helpful and sometimes not.  When this was not helpful,
# I would either google for an answer or refer to The Well-Grounded Rubyist.
# 
# For example, I initially tried to add to an array by doing "my_array.add".  I received an error message that
# "add" was not a method.  I went to RubyDocs, went to the page for Array, and scanned the written text.  One of the
# sections was labelled "Adding Elements", under which I found that I needed to use "push" instead of "add".
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
# I learned that there are so many built-in methods that there are likely many many ways to accomplish the
# same objective.  One's choice is guided by the knowledge one has of all the methods on a class, but in my
# opinion, also on the readability of the code.  If it only saves one or two extra lines in one or two places,
# it may not be worth using some super-cool but obtuse one-line method.  On the other hand, it will probably
# pay great dividends to become more and more familiar with the many methods of the classes one uses the most.
#
#