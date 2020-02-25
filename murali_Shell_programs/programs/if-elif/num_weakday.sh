#! /bin/bash -x

# Read a Number and Display the week day (Sunday, Monday,...)
#------------------------------------------------------------

# read the number from the user
read -p "enter the day number : " num

# if num = 1 print 'Sunday'
if [ $num -eq 1 ]
then
	echo "Sunday"
# if num = 2 print 'monday'
elif [ $num -eq 2 ]
then
	echo "Monday"
# if num = 3 print 'Tuesday'
elif [ $num -eq 3 ]
then
	echo "Tuesday"
# if num = 4 print 'Wednesday'
elif [ $num -eq 4 ]
then
	echo "Wednesday"
# if num = 5 print 'Thursday'
elif [ $num -eq 5 ]
then
	echo "Thursday"
# if num = 6 print 'Friday'
elif [ $num -eq 6 ]
then
	echo "Friday"
# if num = 7 print 'Saturday'
elif [ $num -eq 7 ]
then
	echo "Saturday"
# else print  "invalid input"
fi
