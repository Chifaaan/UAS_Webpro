<?php
include("connection.php");

if (isset($_POST['update_button'])) {
  $id_ruangan = $_POST['id_ruangan'];
  $hari = $_POST['hari'];
  $tanggal = $_POST['tanggal'];
  $waktu_mulai = $_POST['waktu_mulai'];
  $waktu_selesai = $_POST['waktu_selesai'];
  $id_matkul = $_POST['id_matkul'];
  $NIP = $_POST['NIP'];
  $keterangan = $_POST['keterangan'];
  $status = $_POST['status'];

  $id_jadwal = filter_var(isset($_GET['id_jadwal']) ? $_GET['id_jadwal'] : '', FILTER_SANITIZE_STRING);

  if (isset($id_ruangan)) {
    // Update the database
    $sql2 = "update jadwal set id_ruangan='$id_ruangan', id_matkul='$id_matkul', NIP='$NIP', hari='$hari', tanggal='$tanggal', keterangan='$keterangan', status='$status', waktu_mulai='$waktu_mulai', waktu_selesai='$waktu_selesai' WHERE id_jadwal='$id_jadwal'";
    mysqli_query($conn, $sql2);
    
    // Close the database connection
    $conn->close();
  }

  // Redirect back to the form
  header("Location: ../page/detail_jadwal.php?id_jadwal=$id_jadwal");
}
