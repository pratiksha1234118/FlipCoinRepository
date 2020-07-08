#!/bin/bash
hhh=0
ttt=0
hth=0
tht=0
hht=0
thh=0
tth=0
htt=0
read -p "enter the  number of tym you want to flip a coin" num
declare -A coin
for((i=1;i<num;i++))
do
         no=$((RANDOM%8))
        if [ $no -eq 1 ]
        then
        (( hhh  ++ ))
        combination=HHH
        elif [ $no -eq 2 ]
        then
        (( ttt  ++ ))
        combination=TTT
        elif [ $no -eq 3 ]
        then
        (( hth  ++ ))
        combination=HTH
         elif [ $no -eq 4 ]
        then
        (( tht  ++ ))
        combination=THT
        elif [ $no -eq 5 ]
        then
        (( hht  ++ ))
        combination=HHT
         elif [ $no -eq 6 ]
        then
        (( tth  ++ ))
        combination=TTH

        elif [ $no -eq 7 ]
        then
        (( htt  ++ ))
        combination=HTT
        else
        (( thh  ++ ))
        combination=THH
 fi
        coin[$i]="$combination"
done
echo "Dictionary : ${coin[@]}"
echo "percentage of HHH: " $((( hhh * 100 ) / num ))"%"
echo "percentage of HHT: " $((( hht * 100 ) / num ))"%"
echo "percentage of HTH: " $((( hth * 100 ) / num ))"%"
echo "percentage of HTT: " $((( htt * 100 ) / num ))"%"
echo "percentage of TTT: " $((( ttt * 100 ) / num ))"%"
echo "percentage of TTH: " $((( tth * 100 ) / num ))"%"
echo "percentage of THT: " $((( tht * 100 ) / num ))"%"
echo "percentage of THH: " $((( thh * 100 ) / num ))"%"


