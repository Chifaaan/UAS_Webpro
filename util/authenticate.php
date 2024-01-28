<?php
session_start();
if ($_SERVER["REQUEST_METHOD"] == "POST") {
  $username = $_POST["username"];
  $password = $_POST["password"];

  if ($username === "admin") {
    $_SESSION['userStatus'] = 'ADMIN';
    header("Location: ../page/kelas_admin.php");
    exit();
  } else {
    $_SESSION['userStatus'] = 'USER';
    header("Location: ../page/dashboard.php");
    exit();
  }
}
