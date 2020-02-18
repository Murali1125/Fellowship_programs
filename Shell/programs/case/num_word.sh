#! /bin/bash

# Read a Number 1, 10, 100, 1000, etc and display unit, ten, hundred,...
#-----------------------------------------------------------------------


# read the number from the user
read -p "select a number (1, 10, 100, 1000) : " num

# check the number and print in the word
case $num in
	1) # if num =1 print' unit'
		echo "unit" ;;
	10) # if num = 10 print 'ten'
		echo "ten" ;;
	100) # if num =100 print 'hundred'
		echo "hundred" ;;
	1000) # if num = 1000 print 'thousand'
		echo 'thousand' ;;
	*) # else print'unknown input'
		echo "unknown input" ;;
esac
