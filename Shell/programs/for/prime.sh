#! /bin/bash -x

#Write a program that takes a input and determines if the number is a prime.
#---------------------------------------------------------------------------
# the number that acn only divisable by 1 and it self is a prime number


# read number from the user
read -p "enter a number   :  " n

# check it is divisable any number or not

#if the given number <2 its not a prime number
if [ $n -lt 2 ]
then
	echo " $n is not a prime number"
#if n ==2 print its a prime number
elif [ $n -eq 2 ]
then
	echo "$n is  a prime number"
# else check the factors
else
	# gretest factor of a number may be (number/2) 
	# loop upto number/2 times to check factors of the number
	# declare a varible to count the number of factores of the number and initilize to 0
	count=0
	for (( i=2;i<=$(( n / 2 ));i++))
	do
		# if remainder == 0 increse factor count and print its not a prime number
		if [ $(( n % i )) -eq 0 ]
		then
			count=$(( count + 1 ))
			echo "$n is not a prime number"
			break
		fi
	done
	# if there is no factors print its a prime number
	if [ $count -eq 0 ]
	then
		echo "$n is a prime number"
	fi
fi
