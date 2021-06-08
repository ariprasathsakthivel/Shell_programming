#! /bin/bash -x
x=-9; #lower limit
y=9; #upper limit

#generating random array that contains elements between -9 to 9

diff=$(($y-$x+1));
for ((i=0; i<10; i++))
do
	a[i]=$(($(($RANDOM%diff))+x));
done

#finding the 3 integers that adds to zero

n=10;
for ((i=0; i<$n; i++))
do
	for ((j=$(($i+1)); j<$n; j++))
	do
		for ((k=$(($j+1)); k<$n; k++))
		do
			sum=$((${a[i]}+${a[j]}+${a[k]}));
			if [ $sum -eq 0 ];
			then
				echo "$sum";
				echo "${a[i]},${a[j]},${a[k]}"
			fi
		done
	done
done
