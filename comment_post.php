<?php

session_start();

include 'koneksi.php';

$nama = mysqli_real_escape_string($conn, $_POST['nama']);
$pesan = mysqli_real_escape_string($conn,  $_POST['pesan']);

$insert = mysqli_query($conn, "INSERT INTO guestbook (id, tanggal, jam, nama, pesan) VALUES(NULL, NOW(), NOW(), '{$nama}', '{$pesan}')");

if ($insert) { ?>
	<script>
		alert("Message was Succesfull sent !")
	</script>
<?php } ?>

<?php 
	header("Location: comment.php")
?>
