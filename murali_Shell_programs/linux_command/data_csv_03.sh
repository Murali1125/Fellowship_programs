#! /bin/bash -x

# get the overtime data
skip=0
for i in `cat data.csv | awk '{print $5}'`
do
	if [ $skip -eq 0 ]
	then
		skip=$(( skip + 1 ))
		continue
	fi
	# check the overtime pay betwenn 7000 to 1000 if yes print job title
	if [ "$i" -ge 7000 -a "$i" -le 10000 ]
	then
	
		cat data.csv | grep -r $i | awk '{ print $3 }'
	fi
done
