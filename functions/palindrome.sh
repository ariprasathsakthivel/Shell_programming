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

read -p "Enter the first number" n;
read -p "Enter the second numbe" m;
if [ "$( palindrome $n )" -eq $n ];
then
	echo "$n is a palindrome";
else
	echo "$n is not a palindrome";
fi

if [ "$( palindrome $m )" -eq $n ];
then
	echo "$m is a palindrome";
else
	echo "$m is not a palindrome";
fi
