<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
  $username = $_POST["username"];
  $password = $_POST["password"];

  if ($username === "admin") {
    header("Location: labo.html");
    exit();
  } else {
    header("Location: labo.html");
    exit();
  }
}
