#! /bin/bash -x

# Write a Program to generate a birth month of 50 individuals
# between the year 92 & 93. Find all the individuals having
# birthdays in the same month Store it to finally print.
#------------------------------------------------------------

# declare a dictionary
declare -A dict
#initilize dictionary with months
dict[1]=0
dict[2]=0
dict[3]=0
dict[4]=0
dict[5]=0
dict[6]=0
dict[7]=0
dict[8]=0
dict[9]=0
dict[10]=0
dict[11]=0
dict[12]=0

# run the loop 50 times
for (( i=1;i<=50;i++ ))
do
	# get a random month using random variable
	ran=$(( RANDOM % 12 + 1 ))
	# increase the count of the month in dictionary
	dict[$ran]=$(( dict[$ran] + 1 ))
done

# print the values of the dictionary by using loop
for (( i=1;i<=12;i++ ))
do
	echo " in month $i  : ${dict[$i]} members "
done

