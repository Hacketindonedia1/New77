#!/bin/bash
#version 1.0

clear
# Variables
b='\033[1m'
u='\033[4m'
bl='\E[30m'
r='\E[31m'
g='\E[32m'
bu='\E[34m'
m='\E[35m'
c='\E[36m'
w='\E[37m'
endc='\E[0m'
enda='\033[0m'
blue='\e[1;34m'
cyan='\e[1;36m'
red='\e[1;31m'

cowsay -f eyes "New77" | lolcat
figlet -f slant "New77" | lolcat
echo "    <=====================[]====================>" | lolcat
echo "    <=====[       Tools By Hacker online       ]=====>" | lolcat
echo  "    <=====[  Concact Me : +6289655478810  ]=====>" | lolcat
echo "    <=====================[]====================>" | lolcat

sleep 1
###################################################
# CTRL + C
###################################################
trap ctrl_c INT
ctrl_c() {
clear
clear
sleep 1
exit
}


lagi=1
while [ $lagi -lt 6 ];
do
echo ""
echo "1. DDoS" | lolcat
echo "2. Hack Akun FB Masal(MBF)" | lolcat
echo "3. Webdav" | lolcat
echo "4. Spam Jd.id" | lolcat
echo "5. Spam Telkomsel" | lolcat
echo "6. Script Deface Creator" | lolcat
echo "7. Hack FB Narget (Bruteforce)" | lolcat
echo "8. Spam PHD" | lolcat
echo "9. Spam Matahari Mall" | lolcat
echo "10. Spam Email" | lolcat
echo "99. Exit" | lolcat
read -p " Pilih Nomornya =>" pil;

case $pil in
1) sh b.sh

;;
2) python2 1.py
;;
3) sh 2.sh
;;
4) php 3.php
;;
5) php 4.php
;;

6) python2 5.py
;;

7) python2 6.py
;;
8) php PHD.php

;;

9) php Mall.php
;;

10) python2 Email.py
;;

99) echo "Autor : New77" | lolcat
echo "WhatsApp : +6289655478810" | lolcat
echo "Facebook : facebook.com/Lao'neis agung" | lolcat
echo "Channel Youtube : hacker online" | lolcat
figlet -f slant "New77" | lolcat
echo '[!] Selamat Bertemu Lain Waktu...' | lolcat
exit
;;

esac
done
done
