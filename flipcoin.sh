echo "coin flip combination problem"
heads=0
tails=0

 no=$((RANDOM%2))
 if [ $no -eq 1 ]
  then
	echo "head win $no"
 else
	echo "tails win $no"
  fi
