#! /bin/bash -x
function prime(){
	flag=1;
	n=$1;
	for ((i=2; $i<$n; i++))
	do
		if [ $(($n%$i)) -eq 0 ];
		then
			flag=0;
		fi
	done
	echo "$flag";
}

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

read -p "Enter a number" n;
if [ "$( prime $n )" -eq 0 ];
then
	echo "$n is not a prime number";
elif [ "$( prime $n )" -eq 1 ];
then
	echo "$n is a prime number";
	pal_no="$( palindrome $n )"
	if [ "$( prime $pal_no )" -eq 0 ];
	then
		echo "$n's palindrome is not a prime number";
	elif [ "$( prime $pal_no )" -eq 1 ];
	then
		echo "$n's palindrome is a prime number";
	fi
fi
