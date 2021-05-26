#!/bin/bash -x
isHead=1
randomCheck=$((RANDOM%2))
if [ $randomCheck -eq $isPrime ]
then
	echo "Head is the winner"
else
	echo "Tail is the winner"
fi
