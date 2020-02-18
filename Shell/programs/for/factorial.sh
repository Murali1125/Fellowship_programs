#! /bin/bash

# compute factorial of a given number
#-----------------------------------

#read a number from the user
read -p " enter a number to get the factorial :  " num

# declarea varible to store the factorial value and intilize 1
fact=1

#loop upto 1 to given number 
for (( i=num;i>=1;i-- ))
do
	#multiply i values and store into fact variable
	fact=$(( fact * i ))
done
echo " $num factorial : $fact"
