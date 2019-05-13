clear
figlet -f slant "New77" | lolcat
read -p " Masukan IP Target => " t;
read -p " Masukan Port => " p;
read -p " Masukan Packet => " s;

echo ' [!] Mulai Mengirim Paket....' | lolcat
sleep 1

python2 Gg.py  $t $p $s
