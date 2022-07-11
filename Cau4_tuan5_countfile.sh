#!/bin/bash
function dem(){
	so_file=0
	so_tm=0
	so_symbolic_link=0
	so_hard_link=0
	echo -e "\n=>Dang nghien cuu Hiep"
}
function kiemtra(){
	if [ -d $1 ]
		then
			echo -n "$1 la thu muc va "
			if [ -r $1 ]
				then 
					echo "co quyen doc"
					dem $1
			else
				echo "khong co quyen doc"
			fi
	else
		echo "$1 khong phai la mot thu muc"
	fi
}
echo -n "Nhap ten thu muc: "
read thumuc
kiemtra $thumuc
