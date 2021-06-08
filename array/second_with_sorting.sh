#! /bin/bash -x
x=100; #lower limit
y=999; #upper limit
diff=$(($y-$x+1));
for ((i=0; i<10; i++))
do
	a[i]=$(($(($RANDOM%diff))+x));
done
echo "${a[@]}";



n=10;
for ((i=0; i<$(($n-1)); i++))
do
	for ((j=0; j<$(($n-1)); j++))
	do
		if [ "${a[j]}" -lt "${a[$(($j+1))]}" ];
		then
			temp=${a[j]};
			a[j]=${a[$(($j+1))]};
			a[$((j+1))]=$temp;
		fi
	done
done

echo "${a[@]}";
echo "second max-->${a[1]}";
echo "second min-->${a[8]}";

