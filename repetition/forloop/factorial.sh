#! /bin/bash -x
read -p "Enter the number to find the factorial" n;
fact=1;
for ((a=1; a<=$n; a++))
do
	fact=$(($fact*$a));
done
echo "factorial of $n-->$fact";
