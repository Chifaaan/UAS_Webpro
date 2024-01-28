<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
  $username = $_POST["username"];
  $password = $_POST["password"];

  if ($username === "admin") {
    header("Location: ../page/kelas_admin.php");
    exit();
  } else {
    header("Location: ../page/dashboard.php");
    exit();
  }
}
