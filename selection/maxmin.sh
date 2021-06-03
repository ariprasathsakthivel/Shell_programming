#! /bin/bash -x
x=100; #lowerlimit
y=999; #upperlimit
diff=$((y-x+1));
a=$(($(($RANDOM%diff))+x));
b=$(($(($RANDOM%diff))+x));
c=$(($(($RANDOM%diff))+x));
d=$(($(($RANDOM%diff))+x));
e=$(($(($RANDOM%diff))+x));
#for finding the maximum value
if [ $a -ge $b -a $a -ge $c -a $a -ge $d -a $a -ge $e ];
then
	echo "maximum value-->$a";
elif [ $b -ge $a -a $b -ge $c -a $b -ge $d -a $b -ge $e ];
then
	echo "maximum value-->$b";
elif [ $c -ge $b -a $c -ge $a -a $c -ge $d -a $c -ge $e ];
then
	echo "maximum value-->$c";
elif [ $d -ge $b -a $d -ge $a -a $d -ge $a -a $d -ge $e ];
then
	echo "maximum value-->$d";
else
	echo "maximum value-->$e";
fi

#for finding the minimum value
if [ $a -le $b -a $a -le $c -a $a -le $d -a $a -le $e ];
then
	echo "minimum value-->$a";
elif [ $b -le $a -a $b -le $c -a $b -le $d -a $b -le $e ];
then
	echo "minimum value-->$b";
elif [ $c -le $b -a $c -le $a -a $c -le $d -a $c -le $e ];
then
	echo "minimum value-->$c";
elif [ $d -le $b -a $d -le $a -a $d -le $a -a $d -le $e ];
then
	echo "minimum value-->$d";
else
	echo "minimum value-->$e";
fi

