#! /bin/bash  -x


# As a Player would like to start fresh with resetting the board
# As a Player would like to know the if letter X or 0 is assigned to me
# As a Player would like to begin with a toss to check who plays first.
# As a Player would like to see the board so I can choose the valid cells during my turn
# As player would expect the Tic Tac Toe App to determine after every move the winner or the tie or change the turn
# On Computer getting its turn would like the computer to play like me
# First thing I do is check if I can win then play that move
# Next thing I do is check if my Opponent can win then play to block it
# If neither of us are winning then my first choice would be to take one of the available corners
# Second Choice if the corners are not available then take the Centre
# Lastly any of the side if corner and centre is not available.
# As a Player would play till the game is over
#-------------------------------------------------------------------------------------------------------------------

#function for reset the board
function reset_board(){
	#initilize 3 * 3 board with "-"
	#loop for rows
	for (( i=0;i<3;i++ ))
	do
		#loop for columns
		for (( j=0;j<3;j++ ))
		do
			board[$i,$j]='-'
		done
	done
}

#function for display board
function display(){
	echo "   0  1  2 "
	for(( i=0;i<3;i++ ))
	do
		echo -n "$i "
		for(( j=0;j<3;j++ ))
		do
			echo -n "|${board[$i,$j]}|"
		done
		echo -e "\n"
	done
}

#function for player
function player(){
isEmpty
x=$?
player=player
if [ $x -eq 0 ]
then
	echo "tie"
else
	read -p " select a option ( row , col ) "  r c
	if [ $r -gt 2 -o $c -gt 2 -o $r -lt 0 -o $c -lt 0 ]
	then
		echo " choose valid one"
		player
	fi
	if [ ${board[$r,$c]} == '-' ]
	then
		board[$r,$c]='O'
	else
		echo "choose valid one"
		player
	fi
	winner
fi

}

#isEmpty function
function isEmpty(){
	for (( i=0;i<3;i++ ))
	do
		for (( j=0;j<3;j++ ))
		do
			if [ ${board[$i,$j]} == '-' ]
			then
				return 1
			fi
		done
	done
	return 0
}

# function check winner and switch users
function winner(){
	display
	if [ "$player" == "player" ]
	then
		letter='O'
	else
		letter='X'
	fi
	#count variable to count the letters
	count=0
	# check winning pattern
	if [ "$letter" ==  "${board[0,0]}" -a "$letter" == "${board[1,1]}" -a "$letter" == "${board[2,2]}" ]
	then
		echo " $player win "
		exit
	elif [ "$letter" == "${board[0,2]}" -a "$letter" == "${board[1,1]}" -a "$letter" == "${board[2,0]}" ]
	then
		echo " $player win "
		exit
	else	#columns and rows checking
		 for (( i=0;i<3;i++ ))
		 do
			for (( j=0;j<3;j++ ))
	    		do
				value=${board[$i,$j]}
				if [ "$value" == "$letter" ]
		       		then
		        	(( count++ ))
	  			else
		 		count=0
		        	fi
			done
			for (( k=0;k<3;k++ ))
			do
				value=${board[$k,$i]}
				if [ "$value" == "$letter" ]
				then
					(( count++ ))
				else
					count=0
				fi
			done
		    	if [ $count -eq 3 ]
			then
		            echo " $player  win "
			    exit
			else
				#switch player
				if [ "$player" = "player" ]
				then
					computer
				else
					player
				fi
		   	fi
		done
	fi
}


# function for computer play
function computer(){
	isEmpty
	re=$?
	if [ $re -eq  0 ]
	then
		echo " tie"
		exit
	else
		#variables to store the count , empty value index
		count=0
		player=computer
		#check for winning possibility


		# block player
		empty_index_i=''
		empty_index_j=''
		for (( i=0;i<=2;i++ ))
		do
			#rows check
			for (( j=0;j<=2;j++ ))
			do
				if [ ${board[$i,$j]} == 'O' ]
				then
					(( count++ ))
				elif [ ${board[$i,$j]} == '-' ]
				then
					empty_index_i=$i
					empty_index_j=$j
				fi
			done
			if [ $count -eq 2 ]
			then
				board[$empty_index_i,$empty_index_j]='X'
				winner
				return
			fi
			count=0
			# columns check
			for (( k=0;k<=2;k++ ))
		        do
		            if [ ${board[$k,$i]} == 'O' ]
	        	    then
	                	(( count++ ))
		            elif [ ${board[$k,$i]} == '-' ]
		            then
	        	        empty_index_i=$k
		                empty_index_j=$i
		            fi
	        	done
		        if [ $count -eq 2 ]
		        then
	        	    board[$empty_index_i,$empty_index_j]='X'
			    winner
		            return
		        fi
		        count=0
		done

		# digonals check
		for (( i=0;i<=2;i++ ))
		do
			if [ ${board[$i,$i]} == 'O' ]
			then
				(( count++ ))
			elif [ ${board[$i,$i]} == '-' ]
			then
				empty_index_i=$i
				empty_index_j=$i
			fi
		done
		if [ $count -eq 2 ]
		then
			board[$empty_index_i,$empty_index_j]='X'
			winner
			return
		fi

		count=0
		for(( k=2;k>=0;k-- ))
		do
			if [ ${board[$(( 2 - k )),$k]} == 'O' ]
			then
				(( count++ ))
			elif [ ${board[$(( 2 - k )),$k]} == '-' ]
			then
				empty_index_i=$(( 2 - k ))
				empty_index_j=$k
			fi
		done
		if [ $count -eq 2 ]
		then
			board[$empty_index_i,$empty_index_j]='X'
			winner
			return
		fi
		count=0
		# as per instructions
		if [ ${board[0,0]} == '-' ]
		then
			board[0,0]='X'
		elif [ ${board[0,2]} == '-' ]
		then
			board[0,2]='X'
		elif [ ${board[2,0]} == '-' ]
		then
			board[2,0]='X'
		elif [ ${board[2,2]} == '-' ]
		then
			board[2,2]='X'
		elif [ ${board[0,1]} == '-' ]
		then
			board[0,1]='X'
		elif [ ${board[1,0]} == '-' ]
		then
			board[1,0]='X'
		elif [ ${board[1,2]} == '-' ]
		then
			board[1,2]='X'
		elif [ ${board[2,1]} == '-' ]
		then
			board[2,1]='X'
		elif [ ${board[1,1]} == '-' ]
		then
			board[1,1]='X'
		fi
		winner
	fi
}

# declare a bosrd
declare -A board
# letter for players
player_letter='O'
computer_letter='X'

# toss  0-for player 1-computer
toss=$(( RANDOM % 2 ))
reset_board
echo "------- board----------"
display
echo "---------**------------"
if [ $toss -eq 0 ]
then
	echo " player play first"
    player
else
	echo "computer play first"
    computer
fi
