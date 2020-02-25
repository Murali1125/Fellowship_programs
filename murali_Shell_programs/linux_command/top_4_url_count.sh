
# declare a variable to store the urls
url=" "
# declae a variable to count the urls
count=0
# declare a loop count variable to break after 4 urls prints
loop_count=0
# get the urls from the file

for i in `cat access.log | awk '{ print $7}' | sort`
do
	# initilize url
	if [ "$url" == " " ]
	then
		url=`echo "$i"`
	fi
	
	# if url value and i value same then increase the count
	if [ "$url" == "$i" ]
	then
		(( count++ ))
	#else print the url and its count , and change the url to i
	else 
		echo "$count   $url"
		url=$i
		count=1
		(( loop_count++ ))
		# if loop count = 4 break the loop
		if [ $loop_count -eq 4 ]
		then
			break
		fi
	fi
done
