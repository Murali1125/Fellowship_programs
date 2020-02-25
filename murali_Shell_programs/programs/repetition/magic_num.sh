#! /bin/bash -x

# Find the Magic Number
# a. Ask the user to think of a number n between 1 to 100
# b. Then check with the user if the number is less then n/2 or greater
# c. Repeat till the Magic Number is reached
#----------------------------------------------------------------------

# print select magic number 
echo " select a number between 1 to 100  "

# declare 2 variables min and max
min=1
max=100
#declare a temp variable to start the loop
temp=0
# loop until finding the number
while [ $temp -eq 0 ]
do
	#declare a min variable to dive the range
	mid=$(( ( min + max ) / 2 ))
	# ask user to compare mid & number
	read -p  "enter option::  if magic num = $mid :  (0), greater than $mid : (1), lessthan $mid : (2)  " inp
	# if mid =  magic number print found
	if [ $inp -eq 0 ]
	then
		echo "magic number found "
		break
	# if num > mid then change min=mid
	elif [ $inp -eq 1 ]
	then
		min=$mid
	# if num < mid then change max=mid
	elif [ $inp -eq 2 ]
	then
		max=$mid
	# if min > max the given invalid choice so break the loop
	elif [ $min -gt $max ]
	then 
		echo "invalid selections"
		break
	# else print invalid option
	else
		echo "invalid input please give valid input"
	fi
done
