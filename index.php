<?php
session_start();

// Check if userStatus is set in the session
if (isset($_SESSION['userStatus'])) {
  if ($_SESSION['userStatus'] === "ADMIN") {
    header("Location: page/kelas_admin.php");
    exit();
  } elseif ($_SESSION['userStatus'] === "USER") {
    header("Location: page/dashboard.php");
    exit();
  }
} else {
  header("Location: page/login.html");
  exit();
}
