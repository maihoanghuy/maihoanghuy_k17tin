#!/bin/sh
num=0
while [ $num -eq 0 ]
	do	
		echo "CHUONG TRINH HIEN THI THONG TIN TRONG TM"
		echo "1a. Hien thi chi ten file (khong ke file an)"
		echo "2b. Hien thi ten file va thong tin ve file"
		echo "3c. Hien thi ten file va chi so inode cua file"
		echo "4d. Hien thi cac file ke ca file an"
		echo "Nhap doi so de hien thi thong tin: "
		read choice

		case $choice in
			1)
				echo -e "Hien thi chi ten file (khong ke file an:\n$(find -maxdepth 1 ! -type d ! -name '.*') "
				;;
			2)
				echo -e "Hien thi ten file va thong tin ve file:\n$(find -maxdepth 1 ! -type d ! -name '.*' -exec ls -hltrF {} +)"
				;;
			3)
				echo -e "Hien thi ten file va chi so inode cua file:\n$(find -maxdepth 1 ! -type d ! -name '.*' -exec ls -i {} \;)"
				;;
			4)
				echo -e "Hien thi cac file ke ca file an:\n$(find -maxdepth 1 -type f
		)"
				;;
			a)
				echo -e "Hien thi chi ten file (khong ke file an:\n$(find -maxdepth 1 ! -type d ! -name '.*') "
				;;
			b)
				echo -e "Hien thi ten file va thong tin ve file:\n$(find -maxdepth 1 ! -type d ! -name '.*' -exec ls -hltrF {} +)"
				;;
			c)
				echo -e "Hien thi ten file va chi so inode cua file:\n$(find -maxdepth 1 ! -type d ! -name '.*' -exec ls -i {} \;)"
				;;
			d)
				echo -e "Hien thi cac file ke ca file an:\n$(find -maxdepth 1 -type f
		)"
				;;
					
		esac

		echo "Ban co muon tiep tuc? y/n ?"
		read choice
		if [ "$choice" = "y" ];
			then
			num=0
		else
			num=1
		fi
	done
