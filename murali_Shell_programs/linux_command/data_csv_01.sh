#! /bin/bash -x
for i in ` cat data.csv | awk '{ print $4 }' `
do
	# if i > 1000 print name and total pay
	if [ $i -gt 10000 ]
	then
		cat data.csv| grep -i $i | awk '{print $2 "   " $7}'
	fi
done
