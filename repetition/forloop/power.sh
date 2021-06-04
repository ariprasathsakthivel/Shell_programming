#! /bin/bash -x

n=$1; #for commandline argument
for (( a=1; a -le $((2**$n)); a++ ))
do
	a=$((2**$a));
	echo "$a";
done
