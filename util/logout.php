<?php
session_start();

if (isset($_SESSION['userStatus'])) {
    $_SESSION['userStatus'] = null;
}

header('Location: ../index.php');
exit();
?>
