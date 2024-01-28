<?php
include("connection.php");

if (isset($_POST['update_button'])) {
  $kapasitas = $_POST['kapasitas'];
  $jenis_ruangan = $_POST['jenis_ruangan'];
  $lokasi = $_POST['lokasi'];
  $fasilitas = $_POST['fasilitas'];
  $id_ruangan = filter_var(isset($_GET['id_ruangan']) ? $_GET['id_ruangan'] : '', FILTER_SANITIZE_STRING);
  echo $id_ruangan;

  if (isset($id_ruangan)) {
    // Update the database
    $sql2 = "update ruangan set kapasitas='$kapasitas', jenis_ruangan='$jenis_ruangan', lokasi='$lokasi', fasilitas='$fasilitas' WHERE id_ruangan='$id_ruangan'";
    mysqli_query($conn, $sql2);
    
    // Close the database connection
    $conn->close();
  }

  // Redirect back to the form
  header("Location: ../page/detailadmin.php?class=$id_ruangan");
}
