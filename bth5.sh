#!/bin/bash
echo "a : "
read a
echo -n "b : "
read b
echo -n "c: "
read c
delta=$(($b * $b - 4*$a * $c))
if [ $delta -lt 0 ]; then
	echo  "Phuong trinh vo nghiem"
elif [ $delta -eq 0 ]; then
	echo  "Nghiem kep: "
	x=$(echo "scale=2; (-$b /( 2 * $a))"|bc)
	echo "$x"
else
	echo  "Phuong trinh co 2 nghiem "
	x1=$(echo "scale=2; -($b +sqrt($delta))/(2*$a)" | bc)
	echo "$x1"
	x2=$(echo "scale=2; -($b - sqrt($delta))/(2*$a)" | bc)
	echo "$x2"
fi
