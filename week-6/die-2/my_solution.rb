# Die Class 2: Arbitrary Symbols


# I worked on this challeng by myself.
# I spent 1 hour on this challenge.

# Pseudocode

# initialize
# Input:
# An array of labels for the die sides.
# Output:
# No output.
# Steps:
# IF no labels
# 	Throw ArgumentError
# ELSE
# 	Create sides of die, initialized to values passed in

# sides
# Input:
# No input.
# Output:
# Returns number of sides that the die has.
# Steps:
# Return value of instance variable @sides

# roll
# Input:
# No input.
# Output:
# Value of a random side of the side.
# Steps:
# 


# Initial Solution

class Die

  def initialize(labels)
  	if labels == nil || labels.length == 0
  		raise ArgumentError.new("Labels required for die sides")
  	else
  		@sides = labels
  		@num_sides = labels.size
  		@pnrg = Random.new
  	end
  end

  def sides
  	return @num_sides
  end

  def roll
  	@sides[@pnrg.rand(@num_sides)]
  end

end


# Refactored Solution

# I'm pretty happy with my initial solution.


# Reflection
=begin
- What were the main differences between this die class and the last one you created in terms of implementation?

	In the previous challenge there was no need to store the labels
	of the sides, they were implicit.  So code needed to be added to
	store and retrieve the labels.

- Did you need to change much logic to get this to work?

	I didn't need to change much logic, in the sense of control flow.  The only control
	flow logic that needed changing was checking if valid labels were input and throwing
	an error if not.  Otherwise, the changes were related to how to access the labels.

- What does this exercise teach you about making code that is easily changeable or modifiable? 

	Make sure to create variable names that are descriptive, and keep your code DRY
	so that any changes are isolated in one spot.  This can be assisted by decomposition.

- What new methods did you learn when working on this challenge, if any?

	I didn't learn any new methods in this challenge.

- What concepts about classes were you able to solidify in this challenge?

	That the 'initialize' method is automatically called by any class constructor.

=end

# My driver code

# die = Die.new(['a','b','c','d','e','f','g'])
# puts die
# puts die.sides
# 10.times {puts die.roll}