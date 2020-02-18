#! /bin/bash -x

#Take a number from user and check if the number is a
# Prime then show that its palindrome is also prime
# a. Write function check if number is Prime
# b. Write function to get the Palindrome
# c. Check if the Palindrome number is also prime
#----------------------------------------------------

# function for prime number check
function prime(){
	# declare a variable to store return value
	local re=1
	# store the argument in declare a temprary variable
	local var=$1
	#if the given argument is 2 then return true
	if [ $var -eq 2 ]
	then
		re=1
	fi
	# check the argument prime or not
	# declare  variable to count the factors and intialize to 0
	local count=0
	for (( i=2;i<=$(( var / 2));i++ ))
	do
		# if var % i == 0 then its not a prime number
		if [ $(( var % i )) -eq 0 ]
		then
			re=0
			break
		fi
	done
	return $re
		}
# function for palindrome number
function palindrome(){
	# to store the argument declare a temperory variable
	local var=$1
	# if the number is a single digit return false
	if [ $var -lt 10 ]
	then
		echo " $var is not a palindrome"
		re=$var
	else
		#declarea variable to store the palindrome of the number
                local pal=0
		# run the loop until reverse the given argument
		while [ $var -gt 0 ]
		do
			# divide the var wirh 10 and add the remainder to pal
			pal=$(( ( pal * 10 ) + ( var % 10 ) ))
			# change var value to var/10
			var=$(( var / 10 ))
		done
		re=$pal
	fi
	return $re
			}

# Driver progam for above functions

# read a number from the user
read -p " enter a number  : " num

# check that the number is a prime or not by using prime function
prime $num
res=$?
#if the given number is prime number then check its palindrome is also a prime num or not 1-true 0-false
if [ $res -eq 1  ]
then
	echo "$num is a prime number"
	if [ $num -lt 10 ]
	then
		echo "$num is not a palindrome"
	else
		# get the palindrome of the number and store in a variable
		palindrome $num
		pal=$?
		# check the palindrome also prime number or not
		prime $pal
		res1=$?
		# if the palindrome also prime then print 1-true  0- false
		if [ $res1 -eq 1 ]
		then
			echo " the palindrome number $pal also a prime number "
		#else print not a prime number
		else
			echo "the palindrome number $pal is not a prime number"
		fi
	fi
#else print the given number is not a prime number
else
	echo " the number $num is not a prime number "
fi
