# Die Class 1: Numeric

# I worked on this challenge by myself.

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input:
# initialize: Number of sides the die has.
# sides: No input.
# roll: No input.

# Output:
# initialize: No output.
# sides: Number of sides the die has.
# roll: Which number on the die came up.

# Steps:

# initialize:
# Set instance variable to number of sides.

# sides:
# Return value of instance variable holding number of sides.

# roll:
# Return a random number between 1 and the number of sides.


# 1. Initial Solution

class Die

  @@prng = Random.new

  def initialize(sides)

  	if sides < 1
  	  raise ArgumentError.new("Number of sides must 1 or greater.")
  	end

    @sides = sides

  end

  def sides
    return @sides
  end

  def roll
    return @@prng.rand(@sides) + 1
  end

end

# 3. Refactored Solution

# Did not find anything to refactor.

# 4. Reflection

# - What is an ArgumentError and why would you use one?

# 	An ArgumentError is an Exception that a method would raise if it received
# 	an incorrect argument but wasn't equipped to deal with properly resolving
# 	the problem, and wanted to give the caller the opportunity to resolve it.

# - What new Ruby methods did you implement? What challenges and successes did you have in implementing them?

# 	I used the Random class to seed a new random-number generator and
# 	create new random numbers using the 'rand' method.  I had a bit of
# 	a challenge figuring out the usage: first you need to create a new
# 	generator, then you use the generator to churn out random numbers.

# - What is a Ruby class?

# 	A Ruby class is a reusable pattern for a category of objects that all
# 	share the same behavior and data.  New instances of the object can be
# 	created that are all different but which all behave the same.  For instance,
# 	you can create a Class call Bicycle.  All bicycles share the same
# 	attributes like 'color', 'number_gears', 'type', and share the same
# 	behavior like 'pedal', 'brake', 'turn'.  You can create a Class containing
# 	these attributes and behaviors, then churn out Bicycles from this pattern.
# 	One Bicycle may have color 'yellow', number_gears '21', and type 'mountain'.
# 	The next Bicycle created from the class may be 'blue', have '15' gears, and
# 	be a 'racing' bike.

# - Why would you use a Ruby class?

# 	So you can standardize, and don't have to repeat, the attributes and
# 	behavior of objects of the same category.  If you make a change that
# 	applies to all objects in a class, you can make it in one place: the
# 	class definition.

# - What is the difference between a local variable and an instance variable?

# 	A local variable is only available within the method.
# 	An instance variable is freely available to any methods of an instance.

# - Where can an instance variable be used?

# 	An instance variable can be used anywhere within the instance.