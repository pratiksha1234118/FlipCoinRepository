#!/bin/bash
hh=0
tt=0
ht=0
th=0
read -p "enter the  number of tym you want to flip a coin" num

#uc4
declare -A coin
for((i=1;i<num;i++))
do
         no=$((RANDOM%4))
        if [ $no -eq 1 ]
        then
        (( hh  ++ ))
        combination=HH
        elif [ $no -eq 2 ]
        then
        (( tt  ++ ))
        combination=TT
        elif [ $no -eq 3 ]
        then
        (( ht  ++ ))
        combination=HT
        else
        (( th  ++ ))
        combination=TH
        fi
        coin[$i]="$combination"
done
echo "Dictionary : ${coin[@]}"
echo "percentage of HH: " $((( hh * 100 ) / num ))"%"
echo "percentage of TT: " $((( tt * 100 ) / num ))"%"
echo "percentage of HT: " $((( ht * 100 ) / num ))"%"
echo "percentage of TH: " $((( th * 100 ) / num ))"%"




