#! /bin/bash -x
x=1; #lowerlimit
y=6; #upperlimit
diff=$((y-x+1)); #calculating difference
x=$(($((RANDOM%diff))+x));
echo "Dice number is $x";
