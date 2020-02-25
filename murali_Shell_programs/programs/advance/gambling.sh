#! /bin/bash -x

# As a Gambler, would start with a stake of $100 everyday and bet $1 every game
# As a Gambler make $1 bet so either win or loose $1
# As a calculative Gambler if won or lost 50% of the stake, would resign for the day
# After 20days of playing everyday would like to know the total amount won or lost
# Each month would like to know the days won and lost and by how much
# would also like to know my luckiest day where i won maximum and my unluckiest day where i lost maximum
# if won would like to continue playing next month or stop
#--------------------------------------------------------------------------------------------------------


# function for monthly results
function monthly_results () {
# catch the month number
month=$1
echo "::::::  month $month  ::::::"
#declare a dictonary to store the date and win/loose
declare -A dictonary
# day, month variable to iterate the days
day=1

# call the start day function 20 times
for (( i=1;i<=20;i++ ))
do
	echo " day $i "
	start_day
	# save the return stake into dictionary
	temp=$?
	dictonary["$i"]=$temp 
done
#variable to store the luckey day and unluckey day and its values
luckey_day=0
luckey_value=0
unluckey_day=0
unluckey_value=150

#getting luckey day
for (( i=1;i<=20;i++ ))
do
	temp=$(( dictonary[$i] ))
	if [ $(( temp )) -gt $(( luckey_value )) ]
	then
		luckey_value=$(( dictonary[$i] ))
		luckey_day=$i
	fi
	if [ $(( temp )) -lt $(( unluckey_value )) ]
	then
		unluckey_value=$(( dictonary[$i] ))
		unluckey_day=$i
	fi
done

# sum variable
sum=0
# display the monthly result and calculate the monthly avg
for (( i=1;i<=20;i++ ))
do
	echo "day$i - ${dictonary[$i]}"
	sum=$(( sum + dictonary[$i] ))
done

# getting luckey days
echo " luckey days of the month $month"
for (( i=1;i<=20;i++ ))
do
        temp=$(( dictonary[$i] ))
        if [ $(( temp )) -eq $(( luckey_value )) ]
        then
		echo  -n "$i "
        fi
done

#getting unluckey days of the month
echo -e " \n  unluckeydays of the month $month"
for (( i=1;i<=20;i++ ))
do
        temp=$(( dictonary[$i] ))
        if [ $(( temp )) -eq $(( unluckey_value )) ]
        then
                echo -n "$i "
        fi
done


#echo " luckey day of month $month = $luckey_day  : earn $(( luckey_value - 100 )) "
#echo " unluckey day of month $month = $unluckey_day  : lose  $(( 100 - unluckey_value ))"
# avearage
avg=$(( sum / 20 ))
return $avg
}


# function for start the game
function start_day () {
	stake=100
	win=0
	loose=0
	bet=1
	while [ 50 -lt $stake -a $stake -lt 150  ]
	do
		# a random variable to get win-1 loose-0 randomly
		result=$(( RANDOM % 2 ))
		if [ $result -eq 1 ]
		then
			win=$(( win + 1 ))
			stake=$(( stake + 1 ))
		elif [ $result -eq 0 ]
		then
			loose=$(( loose + 1 ))
			stake=$(( stake - 1 ))
		fi
	done
	echo " total bets : $(( win + loose ))"
	echo " number of wins = $win"
	echo " number of looses = $loose"
	return $stake 
}


# driver program for above code

#average variable
avg=100
month=0 # month iteretor
# run the loop until average lessthan 100
until [ $avg -lt 100 ]
do
	(( month ++ ))
	monthly_results $month
	avg=$?
done
