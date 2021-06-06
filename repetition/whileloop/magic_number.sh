#! /bin/bash -x
echo "Think a postive number between 1 and 100";
ans=$((101/2));
flag=0;
i=0;
while [ $flag -ne 1 ];
do
	if [ $i -gt 5 ];
	then
		i=1;
	else
		read -p "is the number greater then $ans or less than $ans or correct. enter 'less' for less than $ans,'more' for more than $ans, 'correct' for correct " x;
		case $x in
			correct)	echo "$ans";
						flag=1
			;;
			more) ans=$(($(($ans+100+$i))/2));
					i=$i+1
			;;
			less)	ans=$(($(($ans+1-$i))/2))
					i=$i+1
			;;
		esac
	fi
done
