#!/bin/bash
echo -e "\t1/a. Tinh tong 1->N"
echo -e "\t2/b. In cac so chia het cho 7 tu 1->N"
echo -e -n "\n\tNhap n de tinh: "
read n
export n
echo -e -n "\n\tNhap yeu cau: "
read choice
case $choice in
	1 | 'a')
		echo "`sh tinhtong.sh`"
		;;
	2 | 'b')
		echo "`sh sochiahet.sh`"
		;;
	*)
		echo "Vui long chon 1,2 hoac a.b $choice"
		;;
esac 
