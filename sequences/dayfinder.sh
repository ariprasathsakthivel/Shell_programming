#!/bin/bash -x
#for using command line arguments
month=$1;
day=$2;
year=$3;
#formulas for gregorian calender
y=$((y-((14-m)/12)))
x=$((year+(year/4)-(year/100)+(year/400)))
m=$((month+12*((14-month)/12)-2))
d=$(((day+x+(31*m)/12)%7))
echo "the day is $d"
