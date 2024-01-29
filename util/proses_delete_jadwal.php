<?php
include("connection.php");
$id_jadwal = filter_var(isset($_GET['id_jadwal']) ? $_GET['id_jadwal'] : '', FILTER_SANITIZE_STRING);

if (isset($id_jadwal)) {
  // Update the database
  $sql = "DELETE FROM `jadwal` WHERE id_jadwal = '$id_jadwal'";
  mysqli_query($conn, $sql);

  // Close the database connection
  $conn->close();
}

// Redirect back to the form
header("Location: ../page/dashboard_admin.php");
