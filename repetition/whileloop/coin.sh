#! /bin/bash -x
count=0
while [ $count -ne 11 ]
do
	x=$((RANDOM%2));
	if [ $x -eq 0 ];
	then
		echo "Tail";
		count=$(($count+1));
	elif [ $x -eq 1 ];
	then
		echo "Head";
		count=$(($count+1));
	fi
done
