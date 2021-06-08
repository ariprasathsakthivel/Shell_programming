#! /bin/bash -x
function palindrome(){
	flag=0
	n=$1
	while [ $n -ne 0 ]
	do
		temp_1=$(($n%10));
		temp_2=$(($n-temp_1));
		n=$((temp_2/10));
		if [ $flag -eq 0 ];
		then
			temp_3=$(($temp_1*10));
			flag=1;
		elif [ $flag -eq 1 ];
		then
			temp_3=$(((($temp_3+$temp_1))*10));
		fi
	done
	echo "$(($temp_3/10))";

}


count=0;
for (( val=0; val<=100;val++ ))
do
	if [ $val -ge 10 ];
	then
		a=$( palindrome $val );
		if [ $a -eq $val ];
		then
			array[count]=$a;
			count=$(($count+1));
		fi
	fi
done

echo "${array[@]}"
