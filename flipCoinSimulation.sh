#!/bin/bash -x
isHead=1
i=0
j=0
read -p "Enter how many times you want to flip your coin : " num
flip=0
while [ $flip -lt $num ]
do
        randomCheck=$((RANDOM%2))
        if [[ $randomCheck -eq $isHead ]]
        then
                echo "Head is the winner"
                i=$(($i+1))
        else
                echo "Tail is the winner"
                j=$(($j+1))
        fi
        if [[ $i -eq 21 && $j -eq 21  ]]
        then
                echo "Tie"
                break
        elif [[ $i -eq 21 ]]
        then
                echo "Head has won"
                break
        elif [[ $j -eq 21 ]]
        then
                echo "Tail has won"
                break
        fi
        flip=$(($flip+1))
done
echo "Head has won $i times"
echo "Tail has won $j times"
