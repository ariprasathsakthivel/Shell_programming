#! /bin/bash -x
x=1; #lowerlimit
y=6; #upperlimit
diff=$((y-x+1)) #calculating the difference
firstdice=$(($((RANDOM%6))+1));
seconddice=$(($((RANDOM%6))+1));
x=$(($firstdice+$seconddice));
echo "Dice number is $x";
