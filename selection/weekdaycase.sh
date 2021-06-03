#! /bin/bash -x
read -p "Enter a number between 0 and 6, where 0 stands for sunday, 1 for monday...6 for saturday" x ;
case $x in
	0) echo "Sunday"
	;;
	1) echo "Monday"
	;;
	2) echo "Tuesday"
	;;
	3) echo "Wednesday"
	;;
	4) echo "Thursday"
	;;
	5) echo "Friday"
	;;
	6) echo "Saturday"
	;;
	*) echo "Please enter a valid number"
	;;
esac
