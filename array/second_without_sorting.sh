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
max=${a[0]};
for ((i=0; i<$n; i++))
do
	for ((j=$(($i+1)); j<$(($n-$i-1)); j++))
	do
		if [ $max -le "${a[j]}" ];
		then
			max=${a[j]};
		fi
	done
done

echo "${a[@]}";
min=${a[0]};
for ((i=0; i<$n; i++))
do
	for ((j=$(($i+1)); j<$(($n-$i+1)); j++))
	do
	  	if [ $min -ge "${a[j]}" ];
		then
			min=${a[j]};
			break;
		fi
	done
done

echo "${a[@]}";
echo "max-->$max";
echo "min-->$min";
