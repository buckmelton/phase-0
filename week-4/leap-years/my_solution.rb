# Leap Years

# I worked on this challenge with: Jack Thatcher.


# Your Solution Below

def leap_year?(year)

	# It's a leap year if:
	# 1) The year is evenly divisible by 4 (e.g. 1960, 2008) AND
	# 2) EITHER The year is not an even 100's (e.g. not 1700, not 1800, not 1900)
	# 3) OR The year is evenly divisible by 400 (e.g. 1600, 2000, 2400)
    return (( year % 4 == 0 ) and ((year % 100 != 0) or (year % 400 == 0)))

end