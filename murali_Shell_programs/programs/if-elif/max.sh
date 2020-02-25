#! /bin/bash -x

# Write a program that reads 5 Random 3 Digit values and then
# outputs the minimum and the maximum value
#------------------------------------------------------------

# declaring a variable to store the max value and intialize to 0
max=0
for i in {1..3}
do
	# least value in 3digit is 100, gretest value in 3digit is 999
	# to get random 3 digit number, divide the RANDOM variable with 
	# difference between the range and add the least value
	val=$(( RANDOM % 899 + 100 ))
	if [ $val -gt $max ]
	then
		# if val is greater than the max then assign the value to max
		max=$val
	fi
done
# print the maximum value
echo "the maximum value : $max "
