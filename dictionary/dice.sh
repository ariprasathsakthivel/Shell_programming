#!/bin/bash -x

#declaring two dictionaries.

declare -A dice_number #for storing the number which we get.
declare -A dice_count	#for storing the count of each number.
l=1; #lower limit
u=6; #upper limit
diff=$((u-l+1)) #difference
count_1=0
count_2=0
count_3=0
count_4=0
count_5=0
count_6=0
count=0



for ((i=1; $count<10; i++))
do
	x=$((((RANDOM%$diff))+l));
	case $x in
		1) dice_number[$i]=$x;
			count_1=$(($count_1+1));
			dice_count[$x]=$count_1
			count=$(($count+1));
		;;
		2) dice_number[$i]=$x;
			count_2=$(($count_2+1));
			dice_count[$x]=$count_2
			count=$(($count+1))
		;;
		3) dice_number[$i]=$x;
			count_3=$(($count_3+1));
			dice_count[$x]=$count_3
			count=$(($count+1))
		;;
		4) dice_number[$i]=$x;
			count_4=$(($count_4+1));
			dice_count[$x]=$count_4
			count=$(($count+1))
		;;
		5) dice_number[$i]=$x;
			count_5=$(($count_5+1));
			dice_count[$x]=$count_5
			count=$(($count+1))
		;;
		6) dice_number[$i]=$x;
			count_6=$(($count_6+1));
			dice_count[$x]=$count_6
			count=$(($count+1))
		;;
	esac
done
echo "${!dice_number[@]}"
echo "${dice_number[@]}"
echo "${!dice_count[@]}"
echo "${dice_count[@]}"


max=${dice_count[1]};
max_key=1;
for key in "${dice_count[@]}"
do
	a=$(($key+1));
	if [ $max -le ${dice_count[$a]} ];
	then
		max_key=$key;
		max=${dice_count[$a]};
	fi
done
echo "Number which reached maximum times-->$max_key";


min=${dice_count[1]};
min_key=1;
for key in "${dice_count[@]}"
do
	a=$(($key+1));
	if [ $min -le ${dice_count[$a]} ];
	then
		min_key=$key;
		min=${dice_count[$a]};
	fi
done
echo "Number which reached Minimum times-->$min_key";
