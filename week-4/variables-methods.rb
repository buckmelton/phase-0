# Full name greeting:
# Write a program that asks for a person's first name, then middle, then last.
# Finally, it should greet the person using their full name.

puts 'Please enter your first name:'
first_name = gets.chomp
puts 'Please enter your middle name:'
middle_name = gets.chomp
puts 'Please enter your last name:'
last_name = gets.chomp

puts 'Howdy, ' + first_name + ' ' + middle_name + ' ' + last_name + '!'


# Bigger, better favorite number:
# Write a program that asks for a person's favorite number.
# Have your program add 1 to the number, and then suggest the result as a bigger and better number.

puts 'Please enter your favorite number:'
fav_num = gets.chomp
bb_num = fav_num.to_i + 1
puts 'That\'s nice, but this is a bigger and better number: ' + bb_num.to_s

# Reflection: 4.3 Variables and Methods
#
# Links to solution files:
# 
#
# * How do you define a local variable?
#
# 	In Ruby, a local variable is defined by its first assignment (e.g. by initializing it).
# 	If you refer to a uninitialized local variable, Ruby will think you're trying to call
# 	a method of that name and you'll get an error message.
#
# * How do you define a method?
#
# 	def <method_name> (<param_list>)
# 		<code>
# 	end
#
# * What is the difference between a local variable and a method?
#
# 	A local variable simply holds a value.
# 	A method executes code.
#
# * How do you run a ruby program from the command line?
#
# 	>ruby <file_name>.rb 
#
# * How do you run an RSpec file from the command line?
#
# 	>rspec <rspec_file_name>.rb 
#
# * What was confusing about this material? What made sense?
#
#	Nothing was confusing, it all made sense.