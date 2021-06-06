#! /bin/bash -x
account=100; #initian amount
bet=1; #betting amount;
won_count=0; #no. of times won
bets_count=0; #no of times bets made
while [ $account -eq 0 -o $account -lt 200 ]
do
	x=$((RANDOM%2));
	if [ $x -eq 0 ];
	then
		account=$(($account-1));
		bets_count=$(($bets_count+1));
	elif [ $x -eq 1 ];
	then
		account=$(($account+2));
		bets_count=$(($bets_count+1));
		won_count=$(($won_count+1));
	fi
done
