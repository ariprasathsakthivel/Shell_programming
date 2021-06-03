#! /bin/bash -x
read -p "Read the instructions and enter the keyword: Enter: (fi) for Feet to Inch (fm) for Feet to Meter (if) for Inch to Feet (mf) for Meter to Feet" x;
read -p "enter the number" a;
case $x in
	fi) echo "$((a*12))"
	;;
	fm) echo "$((a*1000/3281))"
	;;
	if) echo "$((a/12))"
	;;
	mf) echo "$((a*3281/1000))"
	;;
	*) echo "Please enter a valid keyword"
	;;
esac
