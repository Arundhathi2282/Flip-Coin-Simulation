#!/bin/bash -x
isHead=1
i=0
j=0
read -p "Enter a number that how many times you want to flip a coin : " num
flip=0
while [[ $flip < $num ]]
do
randomCheck=$((RANDOM%2))
if [[ $randomCheck -eq $isPrime ]]
then
	echo "Head is the winner"
	i=$(($i+1))
else
	echo "Tail is the winner"
	j=$(($j+1))
fi
flip=$(($flip+1))
done
echo "Head has won $i times"
echo "Tail has won $j times"
