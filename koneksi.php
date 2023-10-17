<?php

$host = "127.0.0.1";
$user = "root";
$pass = "";
$db   = "portal-berita";

$conn = mysqli_connect($host, $user, $pass);
mysqli_select_db($conn, $db);

?>