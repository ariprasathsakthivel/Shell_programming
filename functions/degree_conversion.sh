#! /bin/bash -x

#fucntion for converting from degreeC to degreeF

function degc_to_degf(){
	ans=$(($(($1*9/5))+32));
}

#fucntion for converting from degreeF to degreeC

function degf_to_degc(){
	ans=$(($(($1-32))*5/9))
}

flag=0;
read -p "In which unit do you need the temperature. Enter c for degreeC, f for degreeF" key;
case $key in
	c)	while [ $flag -eq 0 ]
		do
			read -p "Enter the temperature in degreeF" x;
			if [ $x -ge 32 -a $x -le 212 ];
			then
				flag=1;
			else
				flag=0;
			fi
		done
		$( degf_to_degc $x )
	;;
	f)	while [ $flag -eq 0 ]
		do
			read -p "Enter the temperature in degreeC" x;
			if [ $x -ge 0 -a $x -le 100 ];
			then
				flag=1;
			else
				flag=0;
			fi
		done
		$( degc_to_degf $x )
	;;
esac
