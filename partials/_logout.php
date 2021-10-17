<?php
session_start();
echo "Logging you out. Please wait...";

session_destroy();
echo "<script> alert('Logout Sucessfully');
        window.location.href='/forum/index.php';</script>";
// header("Location: /forum")
?>