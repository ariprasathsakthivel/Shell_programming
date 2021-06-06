#! /bin/bash -x
i=0;
j=2
x=11;
while [ $x -le 100 ]
do
	repeat[i]=$x;
	x=$((11*$j));
	j=$(($j+1));
	i=$(($i+1));
done
echo "${repeat[@]}";
