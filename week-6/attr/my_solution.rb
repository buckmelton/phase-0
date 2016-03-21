#Attr Methods

# I worked on this challenge by myself.

# I spent 2 hours on this challenge.

# NameData will initialize a @name variable with your name.
# Greetings will initialize an instance of NameData and include a method to display a salutation to the console.

# Pseudocode

# NameData#initialize
# Input: String representing a name.
# Output: None.
# Steps:
# 	Declare instance variable to store name and set it equal to the name passed in.

# Greetings#initialize
# Input: None.
# Output: None.
# Steps:
# 	Create new NameData object and assign it to new instance variable.

# Greetings#hello
# Input: None.
# Output: Print salutation including name to console.
# Steps:
# 	Print salutation including name to console.

class NameData

	attr_reader :name

	def initialize(name)
		@name = name
	end

end


class Greetings

	def initialize
		@name_data = NameData.new("Buck")
	end

	def hello
		puts "Bom dia, " + @name_data.name + ", quanto português você escreve hoje?"
	end

end

greet = Greetings.new
greet.hello

# Reflection
=begin

- What is a reader method?

	A reader method (often called a getter method in other languages)
	returns the current value of an instance variable.

- What is a writer method?

	A writer method (often called a setter method in other languages)
	sets the value of an instance variable to the value passed in to the method.

- What do the attr methods do for you?

	They provide a handy readable shortcut to defining and using reader and writer methods.

- Should you always use an accessor to cover your bases? Why or why not?

	No.  Two important purposes of a class are to hide implementation details and to
	restrict access.  If you willy-nilly define readers and writers for all your
	instance variables, you are frittering away those advantages, potentially giving
	internal access to instance variables that are best protected from view/modification.

- What is confusing to you about these methods?

	I don't quite get why or how a symbol is necessary to identify the variable name
	that the accessor is being defined for.  E.g. if you are defining a reader for
	the instance variable '@price', why is it

	attr_reader :price

	instead of

	attr_reader price

	or 

	attr_reader @price

	or

	attr_reader "price"

	?

=end