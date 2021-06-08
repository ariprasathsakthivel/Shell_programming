#! /bin/bash -x
x=100; #lower limit
y=999; #upper limit

#generating a random array of 10  elements

diff=$(($y-$x+1));
for ((i=0; i<10; i++))
do
	a[i]=$(($(($RANDOM%diff))+x));
done

#finding the maximum number in the array

n=10;
max=${a[0]};
i=0
for ((j=1; j<$n; j++))
do
	echo "$j";
	if [ $max -le "${a[j]}" ];
	then
		max=${a[j]};
	fi
done

#finding the minimum number in the array

min=${a[0]};
for ((j=1; j<$n; j++))
do
  	if [ $min -ge "${a[j]}" ];
	then
		min=${a[j]};
	fi
done

#removing the maximum and minimum number from the array and storing the other elements in the new array called "new_array"

declare -a new_array;
for ele in ${a[@]}
do
	if [ $ele -eq $max -o $ele -eq $min ];
	then
		continue;
	elif [ $ele -ne $max -o $ele -ne $min ];
	then
		new_array[i]=$ele;
		i=$(($i+1));
	fi
done

#finding the maximum number from the "new_array" i.e, second maximum number in the first array.

n=8;
max_2=${new_array[0]};
i=0
for ((j=1; j<$n; j++))
do
	echo "$j";
	if [ $max_2 -le "${new_array[j]}" ];
	then
		max_2=${new_array[j]};
	fi
done

#finding the minimum number from the "new_array" i.e, second minimum number in the first array.

min_2=${new_array[0]};
for ((j=1; j<$n; j++))
do
  	if [ $min_2 -ge "${new_array[j]}" ];
	then
		min_2=${new_array[j]};
	fi
done

echo "${a[@]}"
echo "${new_array[@]}";
echo "second_max-->$max_2";
echo "second_min-->$min_2";


