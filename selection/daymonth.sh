#!/bin/bash -x
d=$1; #day
m=$2; #month
if [ $m -eq 3 -a $d -ge 20 ];
then
	echo "True";
elif [ $m -eq 6 -a $d -le 20 ];
then
	echo "True";
elif [ $m -eq 4 -a $d -gt 0 ];
then
	echo "True";
elif [ $m -eq 5 -a $d -gt 0 ];
then
	echo "True";
else
	echo "False";
fi
