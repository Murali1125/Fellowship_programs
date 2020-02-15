#! /bin/bash -x

# Read a Number and Display the week day (Sunday, Monday,...)
#------------------------------------------------------------

#read a number between 1 to 7  from the user
read -p " enter a number (in 1 to 7) :  " num

#check the number and print the relavent day of the weak
# 1 - Sunday
# 2 - Monday
# 3 - Tuesday
# 4 - Wednesday
# 5 - Thursday
# 6 - Friday
# 7 - Saturday

case $num in
	1) # if num = 1 print sunday
		echo "Sunday" ;;
        2) # if num = 2 print monday
                echo "monday" ;;
	3) # if num = 3 print tuesday
                echo "Tuesday" ;;
        4) # if num = 4 print monday
                echo "Wednesday" ;;
	5) # if num = 5 print thursday
                echo "Thursday" ;;
        6) # if num = 6 print friday
                echo "Friday" ;;
        7) # if num = 7 print saturday
                echo "Saturday" ;;
	*) # else print invalid input
		echo "invalid input" ;;
esac
