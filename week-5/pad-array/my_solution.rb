# Pad an Array

# I worked on this challenge by myself.

# I spent 1 hour on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
# An array, a minimum size (non-negative integer) for the array,
# and an optional argument of what the array should be "padded" with

# What is the output? (i.e. What should the code return?)
# For 'pad', returns a new array that is the old array, padded with additional
# elements so that it is the minimum size, with any new elements
# being the given padding, or nil if no padding was supplied. If
# the given minimum size is equal to or smaller than the original
# array, then the new output array will be the same as the original array.

# What are the steps needed to solve the problem?

# Create new array, initialize as copy of input array
# Loop from the length of the array to the minimum size
#    Add one element to end of array whose value is the padding
# Return the new array


# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  
  for i in 1..(min_size - array.size)
  	array << value
  end

  return array  

end

def pad(array, min_size, value = nil) #non-destructive

  padded_array = Array.new(array)

  for i in 1..(min_size - array.size)
  	padded_array << value
  end

  return padded_array

end

# 3. Refactored Solution

# I think my work is done here.

# 4. Reflection

# - Were you successful in breaking the problem down into small steps?

# 	Yes.

# - Once you had written your pseudocode, were you able to easily translate
# - it into code? What difficulties and successes did you have?

# 	Yes, fairly easily.  I wasn't quite sure of the precise syntax of the
# 	'for' statement, so I had to look that up.  I also had to look up how to
# 	make a copy of an array: turns out you just call Array.new and pass in the
# 	array you want to copy.

# - Was your initial solution successful at passing the tests? If so, why do
# - you think that is? If not, what were the errors you encountered and what
# - did you do to resolve them?

# 	Yes, my solution passed on the first try.  I think that's because I have
# 	a programming background, and because I'd broken the problem down in
# 	pseudocode first.

# - When you refactored, did you find any existing methods in Ruby to clean up your code?

# 	I didn't think my solution needed any refactoring, it was pretty concise, clean,
# 	and readable.

# - How readable is your solution? Did you and your pair choose descriptive variable names?

# 	I think it's very readable.  Yes, we chose descriptive variable names.

# - What is the difference between destructive and non-destructive methods in your own words?

# 	Non-destructive methods don't change any of the method's input parameters.  If you check
# 	the values of the input parameters before and after calling the method, they will
# 	be the same.  A destructive method can change one or more of the method's input
# 	parameters.  If you check the values of the input parameters after the method has
# 	run, you should expect that one or more of the input parameters has changed.