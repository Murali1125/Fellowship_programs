#! /bin/bash -x

# Write a program for to take a range input from the user and print the prime numbers in that range
#--------------------------------------------------------------------------------------------------
# the number that acn only divisable by 1 and it self is a prime number


# read the range from the user
read -p  "ener the range  : " start end

# if start > end print unknown range
if [ $start -gt $end ]
then
	echo "unknown range"
# if end <2 thereis no prime numbers between start and end
elif [ $end -lt 2 ]
then 
	echo " no prime numbers present in the range"
else
	# declaring a variable to count the number of prime numbers
        prm_count=0
	# if end <2 thereis no prime numbers between start and end loop from start to end
	for (( i==start;i<=end;i++ ))
	do
		# if i value is lessthan 2 continue the loop
		if [ $i -lt 2 ]
		then
			continue
		fi
		#if i=2 print i
		if [ $i -eq 2 ]
		then
			echo "$i "
			prm_count=$(( prm_count + 1 ))
			continue
		fi
		#loop upto i/2 times to check factors
		# declare a variable to count number of factors
		count=0
		for (( j=2;j<=$(( i / 2 ));j++ ))
		do
			#if remainder = 0 incerese factor count and break the loop
			if [ $(( i % j )) -eq 0 ]
			then
				count=$(( count + 1 ))
				break
			fi
		done
		# if there is no factors print  number
		if [ $count -eq 0 ]
		then
			echo "$i "
			prm_count=$(( prm_count + 1 ))
		fi
	done
	echo " total prime numbers in given range : $prm_count "
fi
