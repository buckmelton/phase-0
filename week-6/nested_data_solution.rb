# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array.each_with_index do |element, i|
 if element.kind_of?(Array)
   element.each_with_index {|inner, i| element[i] = inner + 5}
 else
   number_array[i] = element + 5
 end
end
p number_array

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

# Reflection
=begin

- What are some general rules you can apply to nested arrays?

	The number of levels down you want to access need to be mirrored
	by the number of bracket pairs for the indesing.

- What are some ways you can iterate over nested arrays?

	The most-commonly used method is 'each', with presents each element
	for inspection and manipulation.  'each_with_index' adds the ability
	to know and use the index of the array element, for instance to modify
	the element, or to base something on the index value.  You can also
	use traditional loooping mechanisms like for/while loops.

Did you find any good new methods to implement or did you re-use one you were already familiar with?
What was it and why did you decide that was a good option?

	We were able to solve using only methods we were familiar with.
	
=end