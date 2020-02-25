#! /bin/bash -x

# read the time from the user
read -p " give the time interval ( from , to ) : " s e

# declare the variable to count urls
count=0

#declare a variable to store the urls
url=" "

#declare a loop count variable to track the count
loop_count=0

# get the urls from given time intervals
for i  in ` cat access.log | awk '{print $7 $4 }'|sort `
do
	# get the time from i 
	IFS=':' read -ra str <<< "$i"
	j=$(( str[1] ))
	echo "$j"
	# get thr urls from i
	IFS='[' read -ra ur <<< "$i"
	k=`echo "${ur[0]}"`
	echo "$k"
	# if the log time is in the given time then count the url
	if [ $j -ge $s -a $j -le $e ]
	then
		#initilize url
		if [ "$url" == " " ]
		then
			url=`echo "$k"`
		fi
		# if the k and url same then increase the count
		if [ "$url" == "$k" ]
		then
			(( count++ ))
		# else print the urls and its count and re arrange the count=1 and increase loop count
		else
			echo "$count   $url "
			count=1
			(( loop_count++ ))
			# if loop count = 4 break the loop
			if [ $loop_count -eq 4 ]
			then
				break
			fi
		fi
	fi

done
