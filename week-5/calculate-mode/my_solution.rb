# Calculate the mode Pairing Challenge

# I worked on this challenge with: Alec Hendrickson

# I spent 2 hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.


# 0. Pseudocode

# What is the input?
# An array of integers or of strings

# What is the output? (i.e. What should the code return?)
# An array of the most frequent items in the original array

# What are the steps needed to solve the problem?

# Create an empty collection to hold pairs of unique items and their frequency counts.

# Iterate through the input array
# 	If we haven't seen the item, put it into the collection of items with count =1
# 	If we have seen the item, increment its count in the collection by 1

# Initialize the max frequency count to zero
# Iterate through our collection
# 	If the item has a count > the current max frequency count
# 		Make the max frequency count = the current item's frequency count

# Create an empty 'most frequent' collection to hold the most frequent items
# Go through our frequencey count collection
# 	If the item's count equals the max frequency count
# 	Add the item to the 'most frequent' collection

# Return the 'most frequent' collection


# 1. Initial Solution

# def mode(array)

#  # create hash to collect frequencies of array items
#  item_count = {}

#  # pull out unique items from array and count them
#  max_count = 0
#  array.each do |item| 
#    if item_count.has_key?(item) 
#      item_count[item] += 1
#    else 
#      item_count[item] = 1
#    end
#  end

#  # discover what the max frequency is
#  max_count = 0
#  item_count.each do |the_key, the_value|
#  	if the_value > max_count
#  		max_count = the_value
#  	end
#  end

#  # collect all items having max frequency
#  max_freq_items = []
#  item_count.each do |the_key, the_value|
#  	if the_value == max_count
#  		max_freq_items << the_key
#  	end
#  end

#  # max_freq_items = (item_count.select {|the_key, the_val| the_val == max_count}).keys

#  return max_freq_items

# end


# 3. Refactored Solution

def mode(array)

 # create hash to collect frequencies of array items
 item_count = {}

 # pull out unique items from array and count them,
 # keeping track of max frequency at the same time
 max_count = 0
 array.each do |item| 
   if item_count.has_key?(item) 
     item_count[item] += 1
   else 
     item_count[item] = 1
   end
   if item_count[item] > max_count
   	max_count = item_count[item]
   end
 end

 # collect all items having max frequency
 max_freq_items = []
 item_count.each do |the_key, the_value|
 	if the_value == max_count
 		max_freq_items << the_key
 	end
 end

 return max_freq_items

end

# 4. Reflection

# Which data structure did you and your pair decide to implement and why?

# 	We used a hash where the keys were the unique items from the input array, and the values
# 	were the frequency count for that item in the input array.  A hash was the natural choice
# 	as there were pairs of [unique_item, frequency_count].

# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?

# 	Yes.
# What issues/successes did you run into when translating your pseudocode to code?

# 	- We hadn't been quite specific enough with our pseudocode.
# 	- We didn't know some of the necessary syntax or methods available for operating on arrays and hashes

# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?

# 	We pretty much stuck to 'each'.  We toyed with Hash.select, but it produces a hash and we needed an array.
# 	We could have daisy-chained another method to create the required array, but readability was suffereing
# 	already and the daisy-chaining would have made it even worse.