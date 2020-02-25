#! /bin/bash -x

#Flip Coin problem till either Heads or Tails wins 11 times.
#----------------------------------------------------------

# declare temprory variables to store wins
Head_wins=0
Tail_wins=0

# continue the loop until 11 wins
while [ "$Head_wins" -lt 11 -a  "$Tail_wins" -lt 11 ]
do
	# take a random variable toget choice of flip coin
	# and assume varible =1 'head' variable=0 'tails'
	var=$(( RANDOM % 2 ))
	if [ $var -eq 0 ]
	then
		echo "Tails"
		Tail_wins=$(( Tail_wins + 1 ))
	else
		echo "Heads"
		Head_wins=$(( Head_wins + 1 ))
	fi
done

#if Head_wins 1st reach to 11 then head  wins
if [ $Head_wins -eq 11 ]
then
	echo "Head Wins"
# else tail wins
else
	echo "Tail wins"
fi
