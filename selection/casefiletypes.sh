#! /bin/bash -x
for filename in $(ls);
do
	ext=${filename##*\.}
	case $ext in
		java)
			echo $filename : java source file
		;;
		o)
			echo $filename : object file
		;;
		sh)
			echo $filename : shell script file
		;;
		txt)
			echo $filename : Text file
		;;
		*)
			echo $filename : not processed
		;;
	esac
done
