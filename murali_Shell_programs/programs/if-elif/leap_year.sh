#! /bin/bash

# Write a program that takes a year as input and outputs the Year is 
# a Leap Year or not a Leap Year. A Leap Year checks for 4 Digit Number
# Divisible by 4 and not 100 unless divisible by 400
#----------------------------------------------------------------------

# read the  year from the user
read -p "enter a year" year

# check if year divisiable by 4 or not
if [ $(( year % 4 )) -eq 0 ]
then  #yes, check if it is a century
	if [ $(( year % 100 )) -eq 0 ]
	then # yes, check it is divisable by 400
		if [ $(( year % 400 )) -eq 0 ]
		then #yes, print given year is a leap year
			echo "the year $year is a leap year"
		else #no, print given year is not a leap year
			echo "the given year $year is not a leap year"
		fi
	else  # No, print the given year is a leap year
		echo "the given year $year is a leap year"
	fi
else # No, print the given year is not a leap year
	echo " the given year $year  is not a leap year"
fi
