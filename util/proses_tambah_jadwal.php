<?php
include("connection.php");
if (isset($_POST['tambah_button'])) {
  try {
    $id_ruangan = $_POST['id_ruangan']; -
    $hari = $_POST['hari'];-
    $waktu_mulai = $_POST['waktu_mulai'];
    $waktu_selesai = $_POST['waktu_selesai'];
    $id_matkul = $_POST['id_matkul'];-
    $NIP = $_POST['NIP'];-
    $keterangan = $_POST['keterangan'];
    $status = $_POST['status'];

    // Update the database
    $sql = "insert into jadwal (id_ruangan, id_matkul, NIP, hari, waktu_mulai, waktu_selesai, keterangan, status) 
    VALUES ('$id_ruangan', '$id_matkul', '$NIP', '$hari', '$waktu_mulai', '$waktu_selesai', '$keterangan', '$status')";
    mysqli_query($conn, $sql);

    // Close the database connection
    $conn->close();
  } catch (\Throwable $th) {
    echo "Error: " . $th->getMessage;
  } finally {
    header("Location: ../page/tambah_jadwal_kelas.php");
  }
}
