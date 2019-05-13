<?php
include 'bomphd.php';

/*
    https://github.com/nee48/BomSmsPhD
    Made by Hacker online
    Modified by まやちゃん
*/

$init = new Bom();

//Eksekusi Sms Boomber
echo "[?] Nomor : ";
$a = trim(fgets(STDIN));
$init->no = "$a";
echo "[?] Jumlah Pesan : ";
$b = trim(fgets(STDIN));
$loop = "$b";
for ($i=0; $i < $loop; $i++) {
    $init->Verif($init->no);
}
