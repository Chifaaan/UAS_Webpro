<?php
include ("connection.php");
if (isset($_POST['update_button'])) {
    $kapasitas = $_POST['kapasitas'];
    $jenis_ruangan = $_POST['jenis_ruangan'];
    $lokasi= $_POST['lokasi'];
    $fasilitas= $_POST['fasilitas'];
    $className = filter_var(isset($_GET['class']) ? $_GET['class'] : '', FILTER_SANITIZE_STRING);


    // Update the database
    $sql2 = "UPDATE ruangan SET kapasitas='$kapasitas', jenis_ruangan='$jenis_ruangan', lokasi='$lokasi', fasilitas='$fasilitas' WHERE id_ruangan=$className";
    mysqli_query($conn, $sql2);

    // Close the database connection
    $conn->close();

    // Redirect back to the form
    header("Location: detiladmin.php");
}
?>