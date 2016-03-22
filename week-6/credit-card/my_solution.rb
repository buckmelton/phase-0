# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# initialize
# Input: Credit card number as integer.
# Output: If input not 16 digits, raise ArgumentError
# Steps:
# 	Convert cc number integer to array of integers
# 	Check if cc num has 16 digits
# 	If not, raise ArgumentError
# 	Store cc integer array as instance variable

# check_card
# Input: None
# Output: True or False
# Steps:
#     Call double_every_other
#     Call sum_all_digits
#     Call multiple_of_10?
# 		Return the output of multiple_of_10?

# double_every_other
# Input: Array of integers
# Output: A new array with every other integer doubled,
# 	starting with the second to last integer
# Steps:
# 	Make copy of array, reversing it
# 	Loop through array
# 	IF index odd
# 		Double integer element
# 	Reverse again (to put back in original order), destructive

# sum_all_digits
# Input: Array of integers
# Output: Sum of all individual digits in array
# Steps:
# 	Loop through array
# 		IF element >= 10
# 			Convert to string
# 			Convert each element to integer
# 			Add the two integers
# 			Assign sum to the element
# 	Sum the array

# multiple_of_10?
# Input: Output of "sum_all_digits"
# Output: True or False
# Steps:
#  Take modulus of the input and compare to 0
#  Return boolean


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard

	def initialize(cc_num)

		cc_str = cc_num.to_s
		cc_str.each_char do | the_char |
			cc_num_ary << the_char.to_i
		end

		if cc_num.to_s.length != 16
			raise ArgumentError("Credit card number must be 16 digits")
		end

		@cc_num = cc_num_ary

	end

# double_every_other
# Input: Array of integers
# Output: A new array with every other integer doubled,
# 	starting with the second to last integer
# Steps:
# 	Make copy of array, reversing it
# 	Loop through array
# 	IF index odd
# 		Double integer element
# 	Reverse again (to put back in original order), destructive

	def double_every_other

		cc_num_copy = @cc_num.reverse
		cc_num_copy.each_with_index | the_int, the_index |
			if the_index.odd?
				cc_num_copy[the_index] = the_int * 2
			end
		return cc_num_copy.reverse!

	end


end



# Refactored Solution








# Reflection