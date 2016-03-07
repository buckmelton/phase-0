# Factorial
# I worked on this challenge with Adam Zmudzinski.

# Your Solution Below

def factorial(number)

	# Pseudocode:
    # Initalize answer to number passed in.
    # Loop from number-1 down to 0 decrementing 1 every time.
    # answer = answer * iterator
    # End loop when iterator less than or equal to 0
    # Return answer
    
    # Special case: 0! = 1
    return 1 if(number == 0)

    answer = number

    (number-1).downto(1){|i|
        answer *= i
    }

    return answer

end