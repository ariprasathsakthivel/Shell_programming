#! /bin/bash -x
read -p "Enter the positive number" n;
flag=1;
for ((i=2; $i<$n; i++))
do
	if [ $(($n%$i)) -eq 0 ];
	then
		flag=0;
	fi
done

if [ $flag -eq 0 ];
then
	echo "$n is not a prime number";
elif [ $n -eq 1 ];
then
	echo "$n is neither prime nor non-prime";
else
	echo "$n is a prime number";
fi
