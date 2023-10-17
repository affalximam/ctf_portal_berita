<?php

session_start();

if (!$_SESSION['admin']) {
	header("Location: admin_login.php");
}

include 'koneksi.php';
$posts = mysqli_query($conn, "SELECT * FROM post");

// $flag = "CTFS{5QL1_US3_5qlm4p}";
$flag = "CTFS{b4S1c_5qL_1nJ3Ct10n}";

?><!DOCTYPE html>
<html lang="en">

<head>
	<title>Admin Page</title>
	<meta http-equiv="content-type" content="text/html;charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="aset/style.css">
</head>

<body>
	<nav>
		<div class="nav-title">
			<h1>Portal Berita</h1>
		</div>
		<div class="navbar">
			<div class="nav-link">
				<?php if (isset($_SESSION['admin']) && $_SESSION['admin'] == 1) : ?>
				<a href="admin.php">Admin</a>
				<?php endif; ?>
				<a href="index.php">Home</a>
				<a href="comment.php">Comments</a>
				<?php if (isset($_SESSION['admin']) && $_SESSION['admin'] == 1) : ?>
					<a href="admin_logout.php">Logout</a>
				<?php endif; ?>
			</div>
			<div class="nav-search">
				<form action="search.php" method="get">
					<input type="text" name="q" placeholder="Search" required>
					<button type="submit" value="Cari">Search</button>
				</form>
			</div>
		</div>
	</nav>
	
	<section class="article">
		<div class="container">
			<div class="card">
				<h2>Congratulations</h2>
				<p>
					flag :
					<?php
						echo $flag
					?>
				</p>
			</div>
			<?php
			while($row = mysqli_fetch_array($posts)) { ?>
				<div class="card">
					<a href="post.php?id=
					<?php 
						echo $row['id'];
					?> ">
					<h2>
					<?php 
						echo $row['judul'];
					?>
					</h2>
					</a>
					<p>
					<?php
						echo "{$row['user']},";
					?>
					<?php
						echo "Tanggal {$row['tanggal']}";
					?>
					</p>
				</div>
			<?php } ?>
			</div>
	</section>

	<section class="comment">
		<h2>Comment</h2>
		<form action="gb_post.php" method="post">
			<p>
				Name : 
				<input type="text" name="nama" required>
			</p>
			<p>
				Message :
			</p> 
				<textarea name="pesan" cols="40" rows="5" required></textarea>
			<button type="submit" value="Kirim">Send</button>
		</form>
	</section>


	<footer>
		<?php if (isset($_SESSION['admin']) && $_SESSION['admin'] == 1) : ?>
			<a href="admin.php">Admin</a>
		<?php endif; ?>
		<a href="index.php">Home</a>
		<a href="comment.php">Comments</a>				
		<?php if (isset($_SESSION['admin']) && $_SESSION['admin'] == 1) : ?>
			<a href="admin_logout.php">Logout</a>
		<?php endif; ?>
	</footer>
	
</body>

</html>
