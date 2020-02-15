#! /bin/bash -x

# Write a program to simulate a coin flip and print out "Heads" or "Tails" accordingly
#-------------------------------------------------------------------------------------

# Use RANDOM variable torandom selection of head and tail

# declare a variable to store the value 
var=""
#read the number of times user want to flip the coin
read -p " enter how many times you want to  flip the coin: "  flips

# run the loop upto that number of times given by user
for (( i=0 ; i <= $flips ; i++ ))
do
	# generate a random varible(0,1) and assuming if it is 0 = tails and 1 = heads
	var=$(( RANDOM%2 ))
	if [ $var -eq 0 ]
	then
		echo "Tail"
	else
		echo "Head"
	fi
done
