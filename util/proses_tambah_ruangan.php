<?php
include ("connection.php");
if (isset($_POST['tambah_button'])) {
    $id_kelas = $_POST['id_kelas'];
    $kapasitas = $_POST['kapasitas'];
    $jenis_kelas = $_POST['jenis_kelas'];
    $lokasi_kelas = $_POST['lokasi_kelas'];
    $fasilitas_penunjang = $_POST['fasilitas_penunjang'];


    // Update the database
    $sql = "INSERT INTO ruangan (id_ruangan, kapasitas, jenis_ruangan, lokasi, fasilitas)
    VALUES ('$id_kelas', '$kapasitas', '$jenis_kelas', '$lokasi_kelas', '$fasilitas_penunjang')";
    mysqli_query($conn, $sql);

    // Close the database connection
    $conn->close();

}
?>