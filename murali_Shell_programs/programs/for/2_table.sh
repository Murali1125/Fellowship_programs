#! /bin/bash -x

# Write a program that takes a command-line argument n and prints
# a table of the powers of 2 that are less than or equal to 2^n
#---------------------------------------------------------------------


# read n value from the user
read -p "enter n value:  "  n
tab=1
#  2 power n table have n values => use loop n times
for (( i=0;i<=n;i++ ))
do
	#declaring a temperary variable to store the values
	tab=1
	# to calculate 2 to the power of i
	for (( j=$i;j>=1;j-- ))
	do
		# 2 power 0 ==1
		if [ $i -eq 0 ]
		then
			tab=1
			break
		fi
		# i > 0 , 2 multiplayed itself by i times
		tab=$(( tab * 2 ))
	done
	echo " 2 to the power $i : $tab"
done
