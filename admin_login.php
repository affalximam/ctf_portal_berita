<?php

session_start();
include 'koneksi.php';

if (isset($_POST['submit'])) {

	$username = $_POST['username'];
	$password = $_POST['password'];
	
	$login = mysqli_query($conn, "SELECT * FROM user WHERE username = '{$username}' AND password = '{$password}'");

	if (mysqli_num_rows($login) == 0) {
		?>
		<script>
			alert("Username dan Password salah");
		</script>
	<?php 
	} else {
		$_SESSION['admin'] = 1;
		header("Location: admin.php");
	}
	
}

?>
<!DOCTYPE html>
<html lang="en">

<head>
	<title>Admin Login</title>
	<meta http-equiv="content-type" content="text/html;charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="aset/style.css">
</head>

<body class="login-page">
	
	<div class="container">
		<h1>Admin Login</h1>
		<form action="" method="post">
			<p>Username</p>
			<input type="text" name="username" placeholder="Username" required>
			<p>Password</p>
			<input type="password" name="password" id="pass" placeholder="Password" required>
			<div class="viewpass">
				<input type="checkbox" id="viewpass">
				<span>
					Show Password
				</span> 
			</div>
			<button type="submit" name="submit" value="Login">Login</button>
		</form>
	</div>
	<script src="aset/script.js"></script>
</body>
</html>
