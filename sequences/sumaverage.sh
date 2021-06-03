#! /bin/bash -x
x=10; #lower limit
y=99;	#upperlimit
diff=$((y-x+1)); #difference
x=$(($((RANDOM%$diff))+x));
y=$(($((RANDOM%$diff))+x));
z=$(($((RANDOM%$diff))+x));
a=$(($((RANDOM%$diff))+x));
b=$(($((RANDOM%$diff))+x));
sum=$((x+y+z+a+b));
average=$((sum/5));
echo "sum-->$sum average-->$average";
