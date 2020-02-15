#! /bin/bash

# Read a Number and Display the week day (Sunday, Monday,...)
#------------------------------------------------------------

#read the num  from the user
read -p " select a number 1, 10, 100, 1000 :  " num

# if num = 1 print 'unit'
if [ $num -eq 1 ]
then
	echo "unit"
# if the num = 10 print "ten
elif [ $num -eq 10 ]
then
	echo "ten"
# if the num = 100 print "hundred"
elif [ $num -eq 100 ]
then
	echo "hundred"
# if the number = 1000 print 'thousand'
elif [ $num -eq 1000 ]
then
	echo "thousand"
# else print 'invalid input'
else
	echo "invalid input"
fi
