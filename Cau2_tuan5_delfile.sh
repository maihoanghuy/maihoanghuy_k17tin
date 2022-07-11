#!/bin/bash
#vui long tao file test truoc roi moi xoa
echo -e -n "\n\tNhap ten file can xoa: "
read name_file
if [ $name_file != 'delfile.sh' ]
	then
	if [ -e $name_file ]
		then
			echo -e -n "\n\t5 dong dau trong file $name_file: "
			echo -e "\n`head -n 5 $name_file`"
			echo -e "\n\t==============================="
			echo -e "\n\t1. Xoa file"
			echo -e "\n\t2. Khong xoa va thoat"
			echo -e -n "\n\tNhap lua chon: "
			read choice
			case $choice in
				1)
					echo "`rm $name_file`"
					echo -e "\t=> Đã xoa file $name_file"
					;;
				2)
					echo -e "\tKhong xoa file $name_file"
					;;
				*)
					echo -e "\tLua chon khong hop le!"
					;;
			esac
	else
		echo "$name_file khong ton tai"
	fi
else
	echo -e "\t$name_file la file dang chay khong the xoa!"
fi
