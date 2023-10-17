<?php

session_start();

include 'koneksi.php';

$pesan = mysqli_query($conn, "SELECT * FROM guestbook ORDER BY tanggal");

?><!DOCTYPE html>
<html lang="en">

<head>
	<title>Blog</title>
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
	
	<section class="tampil-comments">
		<h2>Comments</h2>
		<div class="container">
		<?php while($row = mysqli_fetch_array($pesan)) { ?>
			<div class="card">
				<p>
					<span>
						<?php echo $row['nama'] ?>
					</span>
					<span>
						(<?php echo $row['tanggal'] ?>)
					</span>
				</p>
				<p>
					<span>Message : </span> 
				</p>
				<p>
					<?php echo $row['pesan']?>
				</p>
				<p class="time">
					<?php echo $row['jam'] ?>
				</p>
			</div>
		<?php }	?>
		</div>
	</section>
	
	

	
	<section class="comment">
		<h2>Comment</h2>
		<form action="comment_post.php" method="post" required>
			<p>
				Name : 
				<input type="text" name="nama" required>
			</p>
			<p>
				Message :
			</p> 
				<textarea name="pesan" cols="40" rows="5"></textarea>
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
