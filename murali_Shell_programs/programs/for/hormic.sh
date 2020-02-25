#! /bin/bash -x

# Write a program that takes a command-line argument n and prints
# the  nth harmonic number. Harmonic Number is of the form
#	H = 1/1 +  1/2 + 1/3 + .......+ 1/N
#----------------------------------------------------------------


# read the n avalues from the user
read -p "enter n value  : " n
# declare 2 variables to store series andsum of the series
Hn=0
series=""
for (( i=1;i<=n;i++ ))
do
	if [ $i -ne 1 ]
	then
		series=$series+1/$i
	else
		series=1/$i
	fi
	Hn=`expr "scale=2;$Hn + 1 / $i" | bc -l`
	echo "$Hn"
done
echo "Hn = $series"
echo "Hn value = $Hn"
