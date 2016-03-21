# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Instance method: initialize
# Input: The number (integer) being thought of, that needs to be guessed.
# Output: None.
# Steps:
# 	Create an instance variable to store the number thought of.
# 	Create an instance variable to store whether the most recent guess was correct,
# 		and initialize it to FALSE

# Instance method: guess
# Input: An integer representing the guess.
# Output: A symbol.  :high if guess was too high, :low if guess was too low, :correct if guess was correct.
# Steps:
# 	IF guess > answer
# 		set most recent guess correct to FALSE
# 		return :high
# 	ELSIF guess < answer
# 		set most recent guess correct to FALSE
# 		return :low
# 	ELSE
# 		set most recent guess correct to TRUE
# 		return :correct

# Instance method: solved?
# Input: None.
# Output: Boolean, whether most recent guess was correct.
# Steps:
# 	IF most recent guess was correct
# 		RETURN TRUE
# 	ELSE
# 		RETURN FALSE


# Initial Solution

# class GuessingGame

#   def initialize(answer)
#     @answer = answer
#     @last_guess_correct = false
#   end

#   def guess(the_guess)
#     if the_guess > @answer
#       @last_guess_correct = false
#       return :high
#     elsif the_guess < @answer
#      @last_guess_correct = false
#      return :low
#     else
#       @last_guess_correct = true
#       return :correct
#     end
#   end

#   def solved?
#     return @last_guess_correct
#   end  

# end

# Refactored Solution

class GuessingGame

  def initialize(answer)
    @answer = answer
    @last_guess_correct = false
  end

  def guess(the_guess)

    if the_guess == @answer
      @last_guess_correct = true
      return :correct
    else
      @last_guess_correct = false
      (the_guess < @answer) ? (return :low) : (return :high)
    end

  end

  def solved?
    return @last_guess_correct
  end  

end

# Reflection
=begin
  
- How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?

  A real-world object has characteristics or attributes.  Instance variables are what tell us (i.e. keep track of)
  what value those attributes have.  For example, Bicycles have a type (mountain, road, ...) and a number of gears
  (10, 15, 18, 21, ...).  The instance variables @type and @gears tell us what type and number of gears a
  particular (instance of) Bicycle is.

  Similarly with instance methods.  A Bicycle has a number of behaviors, like 'brake' or 'pedal' or 'turn'.
  Instance methods specify how these behaviors are to be accomplished.

- When should you use instance variables? What do they do for you?

  Use instance variables to store relevant attributes that every instance of the class will have, but which
  may be different for each instance.  Instance variables allow all methods of the class to have access to
  the same information about the instance, without providing uncontrolled write access to the attribute
  to external objects.

- Explain how to use flow control.
- Did you have any trouble using it in this challenge?
- If so, what did you struggle with?

  Flow control is how you designate different code paths to follow, based on some value.
  Flow control can take the form of an IF THEN ELSE statement, where if some given value is true
  then one code block executed, but if not, then a different code path is executed.
  Flow control can also take the form of looping, where a block of code is executed over and
  over until a given condition is met.

  We did not have any trouble using flow control in this challenge.

- Why do you think this code requires you to return symbols? What are the benefits of using symbols?

  This code likely required us to use symbols because symbols are invariant, and so are simpler
  to manipulate and rely on.  Strings are better used to model actual real-world strings, and
  integers don't have an inherent semantic indicating "higher" or "lower".

=end