# I worked on this challenge by myself.
# This challenge took me 1 hour.

# Pseudocode



# Initial Solution

# def is_fibonacci?(num)

# 	fib_a = 0
# 	fib_b = 1

# 	while fib_b < num do
# 		fib_new = fib_a + fib_b
# 		return true if fib_new == num
# 		fib_a = fib_b
# 		fib_b = fib_new
# 	end

# 	return false

# end



# Refactored Solution

# Relies on weird property of Fibonacci numbers that either
# 5 * fib**2 + 4 or 5 * fib**2 - 4 is a perfect square.

def perfect_square?(num)

	return Math.sqrt(num) == Math.sqrt(num).to_i

end

def is_fibonacci?(num)

	return perfect_square?(5 * num**2 + 4) || perfect_square?(5 * num**2 - 4)

end


# Test/Driver Code

# puts "2: " + is_fibonacci?(2).to_s
# puts "3: " + is_fibonacci?(3).to_s
# puts "5: " + is_fibonacci?(5).to_s
# puts "8: " + is_fibonacci?(8).to_s




# Reflection
=begin

- What concepts did you review in this challenge?

	Basic Ruby: defining methods, Math class, looping, refactoring.

- What is still confusing to you about Ruby?

	I'm still being challenged to remember and take advantage of all the built-in methods.

- What are you going to study to get more prepared for Phase 1?

	Built-in methods for looping/iterators.
=end