#!/bin/bash -x

head=0
tail=0
while [ $head -lt 21 ] && [ $tail -lt 21 ]
do
        r=$((RANDOM % 2))
        if [ $r -eq 1 ]
        then
                head=$(($head + 1))
        else
                tail=$(($tail + 1))
        fi
done

if [ $head -eq $tail ]
then
	while true
	do
		rs=$((RANDOM % 2))
		if [ $rs -eq 1 ]
		then
			head=$(($head + 1))
		else
			tail=$(($tail + 1))
		fi

		if [ $(($head - $tail)) -eq 2 ]
		then
			echo "Head win by 2 and count is $head"
		else
			if [ $(($tail - $head)) -eq 2 ]
			then
				echo "Tail win by 2 and count is $tail"
			fi
		fi
	done
elif [ $head -gt $tail ]
	then
       		win=$(($head - $tail))
		echo "Tail wins by $win"
	else
       		win=$(($tail - $head))
       		echo "Tail wins by $win"
fi


