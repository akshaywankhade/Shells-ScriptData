#!/bin/bash -x

read -p "Enter the Number : " number
counter=0
for (( i=2; i<=number-1; i++ ))
do
	if (( number%i==0 ))
	then
		count=0
		for (( j=1; j<=i; j++ ))
		do
			if (( i%j==0 ))
			then
				(( count++ ))
			fi
		done
		if [ $count -eq 2 ]
		then
			Array[((counter++))]=$i
		fi
	fi
done

printf "\n"
echo ${Array[@]}

