#!/bin/bash -x

# declaring dictionary and arrays for storing the data

declare -A birth_month # dictionary for storing the birth month of each invidual. Key(1-50) represents the person. value represents the birth month on that person.
declare -a january #arrays for storing the respective months persons
declare -a february
declare -a march
declare -a april
declare -a may
declare -a june
declare -a july
declare -a august
declare -a september
declare -a october
declare -a november
declare -a december

l=1; #lower limit
u=12; #upper limit
diff=$((u-l+1)); #difference

#gnerating random birth month of 50 individuals

for ((i=1; i<51; i++))
do
	x=$((((RANDOM%$diff))+l));
	birth_month[$i]=$x;
done

#segregating individuals based on their birth months

for key in ${!birth_month[@]}
do
	month=${birth_month[$key]};
	case $month in
		1) january+=($key);
		;;
		2) february+=($key);
		;;
		3) march+=($key);
		;;
		4) april+=($key);
		;;
		5) may+=($key);
		;;
		6) june+=($key);
		;;
		7) july+=($key);
		;;
		8) august+=($key);
		;;
		9) september+=($key);
		;;
		10) october+=($key);
		;;
		11) november+=($key);
		;;
		12) december+=($key);
		;;
	esac
done


echo "Januvary born persons--> ${january[@]}";
echo "February born persons--> ${february[@]}";
echo "March born persons--> ${march[@]}";
echo "April born persons--> ${april[@]}";
echo "May born persons--> ${may[@]}";
echo "June born persons--> ${june[@]}";
echo "July born persons--> ${july[@]}";
echo "August born persons--> ${august[@]}";
echo "September born person--> ${september[@]}";
echo "October born persons--> ${october[@]}";
echo "November born persons--> ${november[@]}";
echo "December born persons--> ${december[@]}";
