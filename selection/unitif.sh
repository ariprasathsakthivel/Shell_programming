#! /bin/bash -x
read -p "Enter a number for finding a unit digit limit-->1,10,100,1000....1000000" x;
if [ $x -eq 1 ];
then
	echo "unit One";
elif [ $x -eq 10 ];
then
	echo "unit Ten";
elif [ $x -eq 100 ];
then
	echo "unit Hundred";
elif [ $x -eq 1000 ];
then
	echo "unit Thousand";
elif [ $x -eq 10000 ];
then
	echo "unit Ten Thousand";
elif [ $x -eq 100000 ];
then
	echo "unit Lakh";
elif [ $x -eq 1000000 ];
then
	echo "unit Ten Lakh";
else
	echo "Please enter a valit number";
fi
