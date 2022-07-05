#!/bin/sh
num=0
date
set `date`
while [ $num -eq 0 ]
	do 
		echo "Nhap vao mot file:"
		read so
		if test -e "$so"
			then
				echo "file da ton tai"
					if test -f "$so"
						then 
							echo "Day la file thong thuong"
					else
						echo "Day khong la file thong thuong"
					fi
		else
			echo "file khong ton tai"
		fi
		echo -e "Hom nay la thu $1 ngay $3 thang $2 nam $6\nGio hien nay $4"
		echo "Ban co muon tiep tuc? y/n ?"
		read choice
		if [ "$choice" = "y" ];
			then
			num=0
		else
			num=1
		fi
	done
