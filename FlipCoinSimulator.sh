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

echo $head
echo $tail

if [ $head -gt $tail ]
then
	win=$(($head - $tail))
	echo "Head wins by $win"
else
	win=$(($tail - $head))
	echo "Tail wins by $win"
fi
