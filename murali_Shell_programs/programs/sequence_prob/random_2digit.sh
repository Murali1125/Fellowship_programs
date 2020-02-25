#! /bin/bash -x

# write a program that reads 5 random 2 digit values, 
#then find their sum and the average
#--------------------------------------------------------

# least value in two digit is 10 and heighest value in 2 digit is 99
# to get the random 2 digit values divide the RANDOM variable with 
# differrence of the range then add the least value of the range

# declaring the sum and avg variables to store the sum of the digits ang average of the digits
# initilize sum =0 avg =1
sum=0
avg=1
# to get 5 random numbers use loop for 5 iterations
for i in {1..5}
do
	ran=$(( RANDOM%89+10))
	echo " number$i = $ran"
	#adding the all the random numbers to sum variable
	sum=$(( sum+ran ))
done
# averege = (sum of digits/number of digits)
avg=$(( sum/5 ))

echo " sum of the 5 random 2 digit numbers = $sum"
echo " averege of the 5 random 2 digit numbers = $avg"

