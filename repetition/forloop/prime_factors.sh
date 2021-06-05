#! /bin/bash -x
read -p "Enter a postive number" n;
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
			echo "$i";
		fi
	fi
done
