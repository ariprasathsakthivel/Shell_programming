#! /bin/bash -x
read -p "Enter the year in the format YYYY" y;
if [ $(($y%400)) -eq 0 ];
then
	echo "$y is a leap year";
elif [ $(($y%100)) -eq 0 ];
then
	echo "$y is a non-leap year"
elif [ $(($y%4)) -eq 0 ];
then
	echo "$y is a leap year";
else
	echo "$y is a non-leap year";
fi
