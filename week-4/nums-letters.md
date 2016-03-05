# Reflection - Challenge 4.2 - Numbers, Letter, and Variable Assignments

* What does puts do?

  `puts` writes the result of an operation to the console, and returns `nil`

* What is an integer? What is a float?

  An integer is any whole number, such as 3, 25000, 0, -89.
  A float (more formally, a floating-point number) is any number with a decimal point, such as 3.0, 25000.928, 0.65, -89.25

* What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?

  With integer division, the result is always another integer.  If the result would normally have a fraction, the fraction is dropped.  So in integer division, 10 / 4 = 2.
  With float division, the fraction is kept.  So 10.0 / 4.0 = 2.5


* Write a program to compute the number of hours in a year:

	```
	irb(main):001:0> puts 24 * 365
	8760
	=> nil
	```


* Write a program to compute the number of minutes in a decade:

	```
	irb(main):005:0> puts 60 * 24 * ((365 * 10) + 3)
	5260320
	=> nil
	```
	(Note: the "+ 3" is to account for the 3 additional leap days in a typical decade.)
