#! /bin/bash -x
n=$1; #command line argument
i=1; #initial value of the power
ans=1; #initializing for setting the limit
while [ $ans -le $((2**$n)) -a $ans -lt 256 ]
do
	ans=$((2**$i));
	i=$(($i+1));
	echo "$ans ":
done
