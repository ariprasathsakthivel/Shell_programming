#! /bin/bash -x
x=$((RANDOM%2)) #generating a random number 0 or 1
if [ $x -eq 0 ];
then
	echo "Heads";
else
	echo "Tails"
fi
