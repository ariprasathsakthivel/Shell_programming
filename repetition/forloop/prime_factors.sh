#! /bin/bash -x
read -p "Enter a postive number" n;
for ((i=2; i<$n; i++))
do
	for ((j=1; j<$i; j++))
	do
		if [ $(($i%$j)) != 0 ];
		then
			$n=$(($n/$i));
			echo "prime factors are $i,"
		fi
	done
done
