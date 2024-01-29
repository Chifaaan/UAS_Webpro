<?php
session_start();
if ($_SERVER["REQUEST_METHOD"] == "POST") {
  $username = $_POST["username"];
  $password = $_POST["password"];

  if (strcasecmp("admin", $username) === 0) {
    $_SESSION['userStatus'] = 'ADMIN';
    header("Location: ../page/dashboard_admin.php");
    exit();
  } else {
    $_SESSION['userStatus'] = 'USER';
    $_SESSION['userName'] = $username;
    header("Location: ../page/dashboard.php");
    exit();
  }
}
