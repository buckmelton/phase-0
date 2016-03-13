# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # create new hash (with default value?)
  # split string into separate items
  # for each separate item, create hash entry
  # set default quantity: 0
  # print the list to the console [can you use one of your other methods here?]
# output: A hash of the entire list with key being grocery item and value being quantity.


# Method to add an item to a list
# input: item name and optional quantity, and the list to be added to
# steps: 
  # update the value that the hash key (item name) references
# output: print out updated list


# Method to remove an item from the list
# input: list that we're removing from, and the item name that we're removing
# steps: call method to remove hash entry with given key from given list
# output: print out updated list


# Method to update the quantity of an item
# input: list being updated, name of item, new quantity
# steps: assign new quantity to hash entry with given key
# output: print out updated list


# Method to print a list and make it look pretty
# input: list to print
# steps: Possibly use built-in method
#        Otherwise loop through hash and print out each hash entry
# output: List printed prettily

def create_list (string_list)
  if string_list == nil
    groc_hash = Hash.new
  else
    grocery_array = string_list.split(" ")
    groc_hash = Hash.new
    
    grocery_array.each do |x|
      groc_hash[x] = 0
    end
  end
  p groc_hash
end

def add_item (list, item, quantity)
  list[item] = quantity
  p list
end

def remove_item(groc_list, item_name)
  groc_list.delete(item_name)
  p groc_list
end

def update_item_qty (list, item, quantity)
  list[item] = quantity
  p list
end

def print_groc_list (list)
  list.each {|item, qty| p "You have " + qty.to_s + " " + item + "."}
end


# grocery_list = create_list ("carrots apples cereal pizza")
# add_item(grocery_list, "oranges", 4)
# remove_item(grocery_list, "apples")
# update_item_qty(grocery_list, "oranges", 12)
# print_groc_list (grocery_list)

new_groc_list = create_list ()
add_item(new_groc_list, "Lemonade", 2)
add_item(new_groc_list, "Tomatoes", 3)
add_item(new_groc_list, "Onions", 1)
add_item(new_groc_list, "Ice Cream", 4)
remove_item(new_groc_list, "Lemonade")
update_item_qty(new_groc_list, "Ice Cream", 1)
print_groc_list (new_groc_list)
