# Numbers to Commas Solo Challenge

# I spent 1 hour on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
# An integer

# What is the output? (i.e. What should the code return?)
# A string which is the integer with appropriate commas e.g. 1000 => 1,000

# What are the steps needed to solve the problem?

# Create a string and make it the conversion of the input integer to a string
# Get length of string
# If string length > 3
# 	Starting from last char of string, loop until we're less than 4 chars from the first char of string
# 		Move back 3 characters
# 		Insert comma


# 1. Initial Solution

def separate_comma the_int

	the_int_as_str = the_int.to_s

	if the_int_as_str.length > 3
		index_for_comma = the_int_as_str.length
		while index_for_comma > 3
			index_for_comma -= 3
			the_int_as_str.insert(index_for_comma, ',')
		end
	end

	return the_int_as_str
end


# 2. Refactored Solution

# Didn't find anything to refactor.


# 3. Reflection

# What was your process for breaking the problem down? What different approaches did you consider?

# 	I thought about how I would slowly do the process myself, or explain the process
# 	to someone who knew nothing about putting commas into numbers.

# Was your pseudocode effective in helping you build a successful initial solution?

# 	Yes! Most definitely.  My solution mostly rolled out directly from my pseudocode, and where
# 	it didn't the pseudocode helped keep me on track.

# What new Ruby method(s) did you use when refactoring your solution?
# Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.).
# Did it/they significantly change the way your code works? If so, how?

# 	I didn't refactor.

# How did you initially iterate through the data structure?

# 	I didn't iterate through the data structure, I indexed directly into it using
# 	the initial length and subtracting 3 each time.

# Do you feel your refactored solution is more readable than your initial solution? Why?

# 	I didn't refactor.