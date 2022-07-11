#!/bin/bash
function kt_thumuc(){
	if [ -d "$1" ]
		then
			echo -n "$1 là thu muc va "
			if [ -w "$1" ]
				then 
					echo "co quyen ghi"
			else 
				echo "khong co quyen ghi"
			fi
	else 
		echo "`mkdir $1`"
		echo "Da tao thu muc $1"
	fi
}
function coppy(){
	if [ -f $1 ]
		then 
			echo "`cp $1 $2/`"
			count=$(($count + 1))
	else
		echo "File $1 khong ton tai"
	fi
}
echo -e -n "\nNhap thu muc dich: "
read thumuc
kt_thumuc $thumuc
echo -e -n "\nNhap so luong file can copy: "
read n
count=0
for(( i=1; i<=$n; i++ )) {
	echo -e -n "Nhap file thu $i: "
	read file
	coppy $file $thumuc
}
echo "Ban da coppy $n file vao thu muc $thumuc"
