#!/bin/bash
function tinhtong(){
	sum=0
	for(( i=1; i<=$1; i++ ))
	do
		sum=$(($sum + $i))
	done
	echo -e "\n\tTong tu 1->$1 bang: $sum"
}
tinhtong $n
