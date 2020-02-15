#! /bin/bash

echo -e  "enter a charecter:\c "
read val
case $val in
	[a-z])
		echo "user entered small char";;
	[A-Z])
		echo "user entered capitals char";;
	[0-9])
		echo "user entered a num";;
	?)
		echo "user entered special char";;
	*)
		echo "unknown char";;
esac
