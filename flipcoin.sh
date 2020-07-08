echo "1.singlet"
echo "2.doublet"
echo "3.triplet"
read -p "Enter your choice from above statements : " ch
read -p "enter the  number of tym you want to flip a coin" num

if [ "$num" -gt 0 ]
then
#read -p "enter the  number of tym you want to flip a coin" num
case $ch in
"1")
heads=0
tails=0
#read -p "enter the  number of tym you want to flip a coin" num
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
echo winning condition
if [ $heads -gt $tails ]
        then
                echo "head win"
       else
                 echo "tail win"
         fi

echo "percentage of heads: " $((( heads * 100 ) / num ))"%"
echo "percentage of tails: " $((( tails * 100 ) / num ))"%"
;;

"2")
#!/bin/bash
hh=0
tt=0
ht=0
th=0
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
a=$((( hh * 100 ) / num ))"%"
b=$((( tt * 100 ) / num ))"%"
c=$((( ht * 100 ) / num ))"%"
d=$((( th * 100 ) / num ))"%"
arr[0]="$a"
arr[1]="$b"
arr[2]="$c"
arr[3]="$d"
echo "${arr[@]}"
echo "ascending order"
c=$( printf "%s\n" ${arr[@]} | sort -n   )
echo "$c"
echo "descending order"
c=$( printf "%s\n" ${arr[@]} | sort -nr   )
echo "$c"
;;

"3")
hhh=0
ttt=0
hth=0
tht=0
hht=0
thh=0
tth=0
htt=0
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
a=$((( hhh * 100 ) / num ))"%"
b=$((( hht * 100 ) / num ))"%"
c=$((( hth * 100 ) / num ))"%"
d=$((( htt * 100 ) / num ))"%"
e=$((( ttt * 100 ) / num ))"%"
f=$((( tth * 100 ) / num ))"%"
g=$((( tht * 100 ) / num ))"%"
h=$((( thh * 100 ) / num ))"%"
arr[0]="$a"
arr[1]="$b"
arr[2]="$c"
arr[3]="$d"
arr[4]="$e"
arr[5]="$f"
arr[6]="$g"
arr[7]="$h"
echo "${arr[@]}"
echo "ascending order"
c=$( printf "%s\n" ${arr[@]} | sort -n   )
echo "$c"
echo "descending order"
c=$( printf "%s\n" ${arr[@]} | sort -nr   )
echo "$c"
;;
"4")
break
;;
*)
echo invalid choice
;;
esac
fi


