<?php

session_start();
session_destroy();

?>

<script>
    alert("Anda Sudah Logout");
</script>

<?php

header("Location: admin.php")

?>