#! /bin/bash -x

#Write a program that takes a command-line argument n and prints a table of
# the powers of 2 that are less than or equal to 2^n till 256 is reached..
#--------------------------------------------------------------------------

# read the n value from the user
read -p "enter n value" n

# continue while loop until 2 power n = 256
#declare  a variable to store the power value
pow=1
#declare a increment variable
count=0
while [ $count -le $n ]
do
	# if count = 0 , assign pow =1 since 2 power 0 =1
	if [ $count -eq 0 ]
	then
		pow=1
	else
		pow=$(( pow * 2 ))
	fi
	echo "2 power $count  = $pow "
	# if pow is > 256 print error  and exit
	if [ $pow -eq 256 ]
	then
		break
	fi
	count=$(( count + 1 ))
done
