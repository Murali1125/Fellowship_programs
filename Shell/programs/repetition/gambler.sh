#! /bin/bash -x

# Write a Program where a gambler starts with Rs 100 and places Re 1 bet
# until he/she goes broke i.e. no more money to gamble or reaches the goal
# of Rs 200. Keeps track of number of times won and number of bets made.
#-------------------------------------------------------------------------


# set variables  stake = 100 goal = 200 bet =1
stake=100
goal=200
bet=1
# declare temp variables to store wins,number of games and intialize to 0
wins=0
games=0
# run the loop until he reached the goal or he lost all the money

while [ $stake -lt $goal -a $stake -gt 0 ]
do
	# increase the games by 1 on every loop iteration
	games=$(( games + 1 ))
	# take a random variable to randomly select win or loose
	choice=$(( RANDOM % 2 ))
	# if choice = 0 loose choice = 1 wins
	if [ $choice -eq 0 ]
	then
		stake=$(( stake - bet ))
	else
		stake=$(( stake + bet ))
	fi
done

# if stake = goal print reached to goal
if [ $stake -eq $goal ]
then
	echo " Goal Reached"
#else  stake = 0 
else
	echo " stake = 0 "
fi
