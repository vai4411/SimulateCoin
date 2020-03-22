#!/bin/bash -x

read -p "Enter number of times:" n
for ((i=0; i<$n; i++))
do
	r=$((RANDOM % 2))
	if [ $r -eq 1 ]
	then
        	head=$((head + 1))
	else
        	tail=$((tail + 1))
	fi
done

echo "Head is $head"
echo "Tail is $tail"
