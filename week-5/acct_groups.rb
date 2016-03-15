# acct_groups(names)
#
# I worked on this by myself.
# I spent 2 hours on this challenge.
#
# Input:
# An array of names
#
# Output:
# A hash of arrays, each hash entry having a key that is the name of the Accountability
# Group e.g. "Accountability Group 1", and the value being an array of the names of the
# members of that group.  Each group should have ideally 4 or 5 members, and minimally 3.
#
# Pseudocode:
#
# Create a collection of indexed collections. Each inner collection will hold the names
# of one group.  The number of inner
# collections should be the number of names / 4. (This will ensure that
# every group will have at least 4 members, with some groups potentially
# having 5.)
#
# "Deal out" the names to the inner collections created above:
# Loop through each name in the input name list
#    Add name to the collection with the index of the name mod the number of collections
#   (E.g. if the name's index is 21 and the number of collections is 16, add this name
#    to group 5)
#
# Create a new collection, each entry will contain the name of the group,
# and the names of the group members
# Loop through the groups of names, for each group of names:
# 	Put an entry in the collection that consists of the name of the group, and the group
# 	member names
#
# Return the collection of group names/members
#


def acct_groups(names)

	num_groups = names.size / 4

	groups_ary = Array.new(num_groups) { Array.new }

	names.each_with_index do |name, index|
		groups_ary[index % num_groups] << name
	end

	groups_hash = Hash.new
	groups_ary.each_with_index do |group_ary, index|
		groups_hash["Accountability Group " + (index+1).to_s] = group_ary
	end

	return groups_hash

end

# Names of all Fiery Skippers 2016 Students
fiery_skippers_names_array = ['Aarthi Gurusami','Abid Ramay','Adam Zmudzinski','Alec Hendrickson','Alex Wen','Alicia Briceland','Allison paul','Andrey Slonski','Anna Lansfjord','Ben Sanecki','Benjamin R Flores','Buck Melton','Caitlin Hoffman','Carlos Gonzalez','Chand Nirankari','Ché Sanders','Chris Henderson','Christopher Lamkin','Christyn Budzyna','Dan Park','David Ramirez','Ruo Yu Tao','David Walden','Bill Deng','Denny Jovic','Dexter Moran','Diana Ozemebhoya Eromosele','Dominick Lombardo','Elan Kvitko','Elizabeth Alexander','Elizabeth Brown','Ena Bekanovic','Esther Leytush','Evan Druce','Frank Lam','Gabriel Zurita','Jack Thatcher','Jason Milfred','John Colella','Jonathan Kaplan','Kelson Adams','Kristal Lam','Kunal Patel','Leland Meiners','Liam Binell','Lisa Buch','Lisa Dannewitz','Lyudmila Arinich','Mohamed Monekata','Parker Smathers','Patrick DeWitte','Renan Martins','Riley Scheid','Robin Soubry','Samantha Holmes','Scott Southard','Shaun R Sweet','Shin Wang','Sibel Ergener','Simon Thomas','Talal Talhouk','Ted Bogin','Traci Fong','Victoria Solorzano']

# Put them into Accountability Groups
fiery_skippers_acct_groups = acct_groups(fiery_skippers_names_array)

# Pretty print out the Accountability Groups
fiery_skippers_acct_groups.each do | the_key, the_val |
	puts the_key + ":"
	puts the_val
	puts
end

# Reflection:

# - What was the most interesting and most difficult part of this challenge?

# 	The most interesting part was figuring out how to apportion names to groups.
# 	The most difficult part was discovering the correct syntax to initialize an array of empty arrays.

# - Do you feel you are improving in your ability to write pseudocode and break the problem down?

# 	Yes.

# - Was your approach for automating this task a good solution? What could have made it even better?

# 	I thought it was a great solution.

# 	What could have made it better would be to put 5 people in each group,
# 	without having any group with 6 people.  If I used the same heuristic, that would have
# 	required some extra post-processing because my current solution, if made for 5 people
# 	instead of 4, could have put 6 people into some groups, and those groups would need to be
# 	made smaller somehow.

# What data structure did you decide to store the accountability groups in and why?

# 	I originally used just an array of arrays, where each inner array represented
# 	one group and contained the names in that group.  But then the actual group name
# 	wasn't represented anywhere, so I decided to make it a hash, where the key is the
# 	group name and the value is the array of student names.

# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?

# 	I became more comfortable working with hashes.  I'd heard that hashes in
# 	Ruby now are ordered according to the order they were entered, so I took
# 	advantage of that for the first time to help name the Accountability Groups
# 	with a number, the number being their index in the hash.
