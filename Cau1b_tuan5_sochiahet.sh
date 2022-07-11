#!/bin/bash
function sochiahet(){
	echo -e -n "\n\t=>Cac so chia het cho 7 la: "
	for(( i=1; i<=$1; i++ ))
	do
		chia=`expr $i % 7`
		if [ $chia -eq 0 ]
			then 
				echo -n "$i, "
		fi
	done
}
sochiahet $n
