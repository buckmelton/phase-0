/*

User Stories
-------------------------
-Create a new list
-Add an item with a quantity to the list
-Remove an item from the list
-Update quantities for items in your list
-Print the list (Consider how to make it look nice!)

Pseudocode
--------------------------
Create a new list
Input: grocery list name, date, and store
Output: 
	Result: A new empty grocery list with a name, date, and store
	Return:
	Display:
Steps:
	Create list and assign its name, date, and store

Add an item with a quantity to the list
Input: A grocery list item and quantity
Output:
	Result: list with the item added
	Return:
	Display: list with item added
Steps:
	Add an item and quantity to the list of items


Remove an item from the list
Input: name of a grocery list item
Output:
	Result: the list with the item removed
	Return:
	Display: the list with the item removed
Steps:
	LOOP through each item in list
		IF item is found
			remove item from list

Update quantities for items in your list
Input: a list of grocery list item names and their new quantities
Output:
	Result: the list with the item quantities updated
	Return:
	Display: the modified list
Steps:
	LOOP through each item in input
		LOOP through each item in list
			IF the input item is found
				set quantity of list item to new quantity

Print the list (Consider how to make it look nice!)
Input:
Output:
	Result:
	Return:
	Display: the list so it looks nice
Steps:
	Print list name, date, and store
	LOOP through each item in list
		print name and quantity nicely



Initial Solution
-----------------------------
function GroceryList(listName, listDate, forStore) {

	this.list = {};
	this.name = listName;
	this.date = listDate;
	this.store = forStore;

	this.addItem = function(itemName, itemQuantity) {
		this.list[itemName] = itemQuantity;
		this.printList();
	}

	this.removeItem = function(itemName) {
		for (var item in this.list) {
			if (item === itemName) {
				delete this.list[item];
			}
		}
		this.printList();
	}

	this.updateQuantities = function(itemList) {
		for (var updateItem in itemList) {
			for (var existingItem in this.list) {
				if (updateItem === existingItem) {
					this.list[existingItem] = itemList[updateItem];
				}
			}
		}
		this.printList();
	}

	this.printList = function() {
		console.log();
		console.log(this.name + " for " + this.date + " at " + this.store);
		console.log("------------------------------");
		for (var item in this.list) {
			console.log(item + ", Qty: " + this.list[item]);
		}
		console.log();
	}

}

*/

// Refactor
//-------------------------------

function GroceryList(listName, listDate, forStore) {

	this.list = {};
	this.name = listName;
	this.date = listDate;
	this.store = forStore;

	this.addItem = function(itemName, itemQuantity) {
		this.list[itemName] = itemQuantity;
		this.printList();
	}

	this.removeItem = function(itemName) {
		for (var item in this.list) {
			if (item === itemName) {
				delete this.list[item];
			}
		}
		this.printList();
	}

	// Refactored.  Got rid of inner loop and if-test by taking advantage of the
	// fact that you can just presumptively add/assign a property and value
	// to an Object in JavaScript.
	this.updateQuantities = function(itemList) {
		for (var updateItem in itemList) {
			this.list[updateItem] = itemList[updateItem];
		}
		this.printList();
	}

	this.printList = function() {
		console.log();
		console.log(this.name + " for " + this.date + " at " + this.store);
		console.log("------------------------------");
		for (var item in this.list) {
			console.log(item + ", Qty: " + this.list[item]);
		}
		console.log();
	}

}



// Driver/Testing Code:

var myList = new GroceryList("Buck's Grocery List", '4/6/16', "Trader Joe\'s");

myList.printList();

myList.addItem("Bananas", 12);

myList.removeItem("Bananas");

myList.addItem("Bananas, Organic", 20);

myList.addItem("Rice Milk", "1qt");

myList.addItem("Chocolate Cake", 2);

myList.addItem("Quaker Oats", "1 cannister");

myList.updateQuantities({"Rice Milk": "1gal", "Chocolate Cake": 3});

/*
Reflection:
---------------------
- What concepts did you solidify in working on this challenge?
	(reviewing the passing of information, objects, constructors, etc.)

	How to create a Constructor, including its methods.
	How to use 'for (.. in ..)' structure on Objects.
	How easy it is to add and remove properties from Objects.

- What was the most difficult part of this challenge?

	Remembering that in the 'for (.. in ..)' structure, that what you
	have access to is only the string that is the name of the property, it
	doesn't include the actual value of the property.

- Did an array or object make more sense to use and why?

	Object, because this was very much like a hash (just like in the Ruby version
	of the challenge) where the grocery list item is the key and the quantity is
	the value.

	*/