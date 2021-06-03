#! /bin/bash -x
read -p "Enter number_1" a;
read -p "Enter number_2" b;
read -p "Enter number_3" c;
f1=$((a+b*c));
f3=$((c+a/b));
f2=$((a%b+c));
f4=$((a*b+c));
#for finding the maximum value
if [ $f1 -ge $f2 -a $f1 -ge $f3 -a $f1 -ge $f4 ];
then
	echo "Maximum value-->$f1";
elif [ $f2 -ge $f1 -a $f2 -ge $f3 -a $f2 -ge $f4 ];
then
	echo "Maximum value-->$f2";
elif [ $f3 -ge $f2 -a $f3 -ge $f1 -a $f3 -ge $f4 ];
then
	echo "Maximum value-->$f3";
else
	echo "Maximum value-->$f4";
fi
#for finding the minimum value
if [ $f1 -le $f2 -a $f1 -le $f3 -a $f1 -le $f4 ];
then
	echo "Minimum value-->$f1";
elif [ $f2 -le $f1 -a $f2 -le $f3 -a $f2 -le $f4 ];
then
	echo "Minimum value-->$f2";
elif [ $f3 -le $f2 -a $f3 -le $f1 -a $f3 -le $f4 ];
then
	echo "Minimum value-->$f3";
else
	echo "Minimum value-->$f4";
fi
