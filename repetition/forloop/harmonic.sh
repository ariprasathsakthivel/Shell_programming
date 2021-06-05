#! /bin/bash -x
n=$1; #command line argument
for ((x=1; x<=$(($n)); x++))
do
	if [ $x -eq $n ];
	then
		ans="$ans(1/$x)";
	else
		ans="$ans(1/$x)+";
	fi
	echo $ans;
done
