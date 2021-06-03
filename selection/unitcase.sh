#! /bin/bash -x
read -p "Enter a number for finding a unit digit limit-->1,10,100,1000....1000000" x;
case $x in
	1) echo "Unit One"
	;;
	10) echo "Unit Ten"
	;;
	100) echo "Unit Hundred"
	;;
	1000) echo "Unit Thousand"
	;;
	10000) echo "Unit Ten Thousand"
	;;
	100000) echo "Unit Lakh"
	;;
	1000000) echo "Unit Ten Lakh"
	;;
	*) echo "Please enter a valit number"
	;;
esac
