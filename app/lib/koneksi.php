<?php

$servername = “localhost”;
$database = “produk”;
$username = “admin”;
$password = “admin”;

$konek = mysqli_connect ($servername, $username, $password, $database);

if ($konek!=false){
echo "koneksi berhasil";
} else 

?>

