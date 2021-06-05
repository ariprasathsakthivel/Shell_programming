#! /bin/bash -x
read -p "Enter the lower limit greter than 1" l
read -p "Enter the upper limit" u;
for ((j=$l; $j<=$u; j++))
do
	flag=1;
	for ((i=2; $i<$j; i++))
	do
		if [ $(($j%$i)) -eq 0 ];
		then
			flag=0;
		fi
	done
	if [ $flag -eq 0 ];
	then
		echo "$j is non-prime";
	else
		echo "$j is prime";
	fi
done
