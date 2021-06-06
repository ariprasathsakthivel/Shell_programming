#! /bin/bash -x
read -p "Enter a postive number" n;
k=0;
for ((i=2; $i<=$n; i++))
do
	if [ $(($n%$i)) -eq 0 ];
	then
		flag=1;
		for ((j=2; $j<$i; j++))
		do
			if [ $(($i%$j)) -eq 0 ];
			then
				flag=0;
				break;
			fi
		done
		if [ $flag -eq 1 ];
		then
			prime_factors[k]=$i;
			k=$k+1;
		fi
	fi
done
echo ${prime_factors[@]}
