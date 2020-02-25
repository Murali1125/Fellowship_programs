#! /bin/bash -x

# Write a program that takes day and month from the command line and prints 
# true if day of month is between March 20 and June 20, false otherwise
#--------------------------------------------------------------------------

# read the day and month from the command line
read -p "enter day month" day month
# if the given month in between march(3) and june(6) check the days
# else print false
if [ "$month" -ge 3 -a "$month"  -le 6 ]
then	
	# if the given month is march check the day is lessthan 20 
	#if yes print 'false' else print 'true'
	if [ "$month" -eq 3 ]
	then
		if [ "$day" -lt 20 ]
		then
			echo "false"
		else
			echo "true"
		fi
	# if the month is june check the day is greaterthan 20 
	# if yes print 'false' else 'true'
	elif [ "$month" -eq 6]
	then
		if [ "$day" -gt 20 ]
		then
			echo "fasle"
		else
			echo "true"
		fi
	# else print 'true'
	else
		echo "true"
	fi
else
	echo "false"
fi
