#!/bin/bash -x
var_1=10;
var_2=10;
if [ $var_1 -gt $var_2 ];
then
	echo "$var_1 is greater then $var_2";
elif [ $var_1 -eq $var_2 ];
then
	echo "$var_1 is equal to $var_2";
else
	echo "$var_1 is less than $var_2";
fi
