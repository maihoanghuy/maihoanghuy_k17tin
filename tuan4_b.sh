#!/bin/bash
echo "Nhap vao so can kiem tra: "
read n
if [ $n -gt 0 ]
	then 
		echo "$n la so duong"
elif [ $n -lt 0 ]
	then
		echo "$n la so am"
else 
	echo "so vua nhap bang 0"
fi
