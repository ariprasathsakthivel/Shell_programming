#! /bin/bash -x
read -p "Enter a number between 0 and 6, where 0 stands for sunday, 1 for monday...6 for saturday" x ;
if [ $x -eq 0 ];
then
	echo "Sunday";
elif [ $x -eq 1 ];
then
	echo "Monday";
elif [ $x -eq 2 ];
then
	echo "Tuesday";
elif [ $x -eq 3 ];
then
	echo "Wednesday";
elif [ $x -eq 4 ];
then
	echo "Thursday";
elif [ $x -eq 5 ];
then
	echo "Friday";
elif [ $x -eq 6 ];
then
	echo "Saturday";
else
	echo "Please enter a valid number]";
fi
