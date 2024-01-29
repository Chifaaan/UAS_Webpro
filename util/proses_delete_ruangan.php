<?php
include("connection.php");
$id_ruangan = filter_var(isset($_GET['id_ruangan']) ? $_GET['id_ruangan'] : '', FILTER_SANITIZE_STRING);

if (isset($id_ruangan)) {
  // Update the database
  $sql = "DELETE FROM `ruangan` WHERE id_ruangan = '$id_ruangan'";
  mysqli_query($conn, $sql);

  // Close the database connection
  $conn->close();
}

// Redirect back to the form
header("Location: ../page/kelas_admin.php");
