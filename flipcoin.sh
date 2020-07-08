#!/bin/bash
heads=0
tails=0
read -p "enter the  number of tym you want to flip a coin" num
declare -A coin
heads=0
tails=0

for((i=1;i<num;i++))
do
        no=$((RANDOM%2))
        if [ $no -eq 1 ]
        then
                combination=H
                (( heads ++ ))
        else
                 combination=T
                (( tails++ ))
          fi
        coin[$i]=$combination
done
echo ${coin[@]}
echo "percentage of heads: " $((( heads * 100 ) / num ))"%"
echo "percentage of tails: " $((( tails * 100 ) / num ))"%"




