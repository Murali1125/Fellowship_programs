#! /bin/bash -x

#Write a program in the following steps
# Roll a die and find the number between 1 to 6
# Repeat the Die roll and find the result each time
# Store the result in a dictionary
# Repeat till any one of the number has reached 10 times
# Find the number that reached maximum times and the one that was for minimum times
#----------------------------------------------------------------------------------

#declare a sictionary to store the elements
declare -A dict

# initilize dice values in to dictionary
dict[1]=0
dict[2]=0
dict[3]=0
dict[4]=0
dict[5]=0
dict[6]=0

# declare a temporary loop variable and initilize with 0
temp=1
while [ $temp -lt 10 ]
do
	# take a variable to store random die variable
	ran=$(( RANDOM % 6 + 1 ))
	# increse the count of the die number in dictionary
	dict[$ran]=$(( dict[$ran] + 1 ))
	# if the count of the die number is greaterthan temp loop variable then assign the count to temp
	x=$(( dict[$ran] ))
	if [ $x -gt $temp ]
	then
		# a temprory variable to store the value of die
		max=$ran
		temp=$x
	fi
done

# finding the number that occurs min times
# declaring the temp variable to store the min value
min=10
#declare a variable to store the key value
k=""
# rum the loop 6 times since there are 6 elements.
for (( i=1;i<=6;i++ ))
do
	# assign value of dictionary with key=i to x
	x=$(( dict[$i] ))
	# if x value is leesthan min value, assign x value to min
	if [ $x -lt $min ]
	then
		min=$x
		k=$i
	fi
done

# print the value 1st reached to 10 
echo " number that occur to 10 times   : $max"

#print the minimum occurence value
echo " number that occur minimum times is  $k  :  $min times"

