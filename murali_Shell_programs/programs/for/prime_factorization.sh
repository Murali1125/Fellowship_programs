#! /bin/bash -x

#Write a program to compute Factors of a number N using prime factorization method.
#----------------------------------------------------------------------------------

# read a number from the user
read -p "enter the number ( not a prime number )  : " num

# declare an array to store the list of prime numbers, index variable
declare -a list
index=0
# insert 1st prime number into array
list[$index]=2
# get the all prime numbers upto num /2 and store then in an array
for (( i==3;i<=$(( num / 2 + 1 ));i++ ))
do
	# declare a variable to count the factors and intilize to 0
	count=0
	# check that i is divisable by another number or not
	for (( j=2;j<=$(( i / 2 )); j++ ))
	do
		if [ $(( i % j )) -eq 0 ]
		then
			count=$(( count + 1 ))
			break
		fi
	# if count = 0 there is nop factors for the num then its a prime number
	if [ $count -eq 0 ]
	then
		index=$(( index + 1 ))
		list[$index]=$i
	fi
	done
done

# prime factorization mentethod

# declare an array  to store the prime factors
declare -a fct
ind=0
#variable to count the loops
l=0
# run the loop upto num = 1
until [ $num -eq 1 ]
do
	l=0
	# loop the prm number array to get prime factor
	for (( i=0;i<=index;i++ ))
	do
		l=$(( l + 1 ))
		# if num % prime number present at list[i] = 0 add the number into facter array and num=num/list[i]
		if [ $(( num % list[$i] )) -eq 0 ]
		then
			fct[$ind]=$(( list[$i] ))
			ind=$(( ind + 1 ))
			num=$(( num / list[$i] ))
			break
		fi
		# if l == last index of the list => the given number may be prime number ext the program
		if [ $l -gt $index ]
		then
			echo " invalid input"
			exit
		fi
	done
done

# print prime factors
echo "${fct[@]}"
