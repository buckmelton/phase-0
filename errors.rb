# Analyze the Errors

# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

#"Screw you guys " + "I'm going home." = cartmans_phrase
cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

# def cartman_hates(thing)
#   while true
#     puts "What's there to hate about #{thing}?"
# end

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# errors.rb
# 2. What is the line number where the error occurs?
# 171
# 3. What is the type of error message?
# syntax
# 4. What additional information does the interpreter provide about this type of error?
# Unexpected end of input, expecting keyword 'end'
# 5. Where is the error in the code?
# Lin 17
# 6. Why did the interpreter give you this error?
# The 'while' loop needs and 'end'

# --- error -------------------------------------------------------

#south_park

south_park = "foo"

# 1. What is the line number where the error occurs?
# 42
# 2. What is the type of error message?
# Doesn't really say.  Says 'in <main>'
# 3. What additional information does the interpreter provide about this type of error?
# Undefined local variable or method 'south_park'
# 4. Where is the error in the code?
# Line 42
# 5. Why did the interpreter give you this error?
# The variable must be initialized, otherwise it's interpreted as a method name,
# but we haven't defined a method 'south_park'

# --- error -------------------------------------------------------

#cartman()

def cartman()
	return "Eric"
end

cartman()

# 1. What is the line number where the error occurs?
# 60
# 2. What is the type of error message?
# Doesn't really say.  Says 'in <main>'
# 3. What additional information does the interpreter provide about this type of error?
# Undefined method 'cartman'
# 4. Where is the error in the code?
# Line 60
# 5. Why did the interpreter give you this error?
# The program is calling the method cartman, but no such method has been defined.

# --- error -------------------------------------------------------

# def cartmans_phrase
#   puts "I'm not fat; I'm big-boned!"
# end

# cartmans_phrase('I hate Kyle')

def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase

# 1. What is the line number where the error occurs?
# 81
# 2. What is the type of error message?
# Doesn't say
# 3. What additional information does the interpreter provide about this type of error?
# Wrong number of arguments
# 4. Where is the error in the code?
# The method 'cartmans_phrase' is called with an argument, but the
# definition doesn't call for any parameters.
# 5. Why did the interpreter give you this error?
# You're trying to all a zero-parameter method with a parameter.

# --- error -------------------------------------------------------

# def cartman_says(offensive_message)
#   puts offensive_message
# end

# cartman_says

# 1. What is the line number where the error occurs?
# 107
# 2. What is the type of error message?
# Doesn't say
# 3. What additional information does the interpreter provide about this type of error?
# 'cartman_says' wrong number of arguments
# 4. Where is the error in the code?
# Line 111
# 5. Why did the interpreter give you this error?
# Trying to call a 1-parameter method with no parameters.



# --- error -------------------------------------------------------

# def cartmans_lie(lie, name)
#   puts "#{lie}, #{name}!"
# end

# cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# 128
# 2. What is the type of error message?
# Doesn't say
# 3. What additional information does the interpreter provide about this type of error?
# 'cartmans_lie' wrong number of arguments
# 4. Where is the error in the code?
# Line 132
# 5. Why did the interpreter give you this error?
# Forgot to include a 2nd parameter when calling the method

# --- error -------------------------------------------------------

# 5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# 147
# 2. What is the type of error message?
# Doesn't say
# 3. What additional information does the interpreter provide about this type of error?
# String can't be coerced into a Fixnum
# 4. Where is the error in the code?
# Line 147
# 5. Why did the interpreter give you this error?
# The multiplication operator * requires a number after it

# --- error -------------------------------------------------------

# amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# 162
# 2. What is the type of error message?
# Doesn't say
# 3. What additional information does the interpreter provide about this type of error?
# Divide by zero
# 4. Where is the error in the code?
# Line 162
# 5. Why did the interpreter give you this error?
# You can't divide by zero - dividing by zero is undefined

# --- error -------------------------------------------------------

require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# 178
# 2. What is the type of error message?
# Doesn't say
# 3. What additional information does the interpreter provide about this type of error?
# Can't load file
# 4. Where is the error in the code?
# 178
# 5. Why did the interpreter give you this error?
# The file 'cartmans_essay' can't be found at the given location.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

# * Which error was the most difficult to read?

#   They were all pretty easy to read.

# * How did you figure out what the issue with the error was?

#   Look at the line cited.  If there was no error directly in the line
#   cited, look at the line that is referring to that line (e.g. when calling
#   	a method).  In the case of a 'missing' or 'unexpected' keyword, often
#   	the error occurred above the line cited, sometimes way above, where you
#   	forgot an 'end' or other keyword.
  	
# * Were you able to determine why each error message happened based on the code? 

#   Yup.

# * When you encounter errors in your future code, what process will you follow to help you debug?

#   Look at the error message, find the line number, look at that line
#   number.  If there doesn't appear to be an error within that line, look
#   to where anything referred to in that line is defined (e.g. method or
#   variable definition) and determine if there is a definition mismatch.
#   In the case of a 'missing' or 'unexpected' keyword, look above the line
#   	cited to suss out a missing 'end' or other keyword.