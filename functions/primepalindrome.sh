#! /bin/bash -x
function prime(){
	flag=1;
	n=$1;
	for ((i=2; $i<$n; i++))
	do
		if [ $(($n%$i)) -eq 0 ];
		then
			flag=0;
		fi
	done
}
