<?php
$showError = "false";
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    include '_dbconnect.php';
    $user_first = $_POST['signupFirstname'];
    $user_last = $_POST['signupLastname'];
    $user_email = $_POST['signupEmail'];
    $pass = $_POST['signupPassword'];
    $cpass = $_POST['signupcPassword'];

    // Check whether this email exists
    $existSql = "select * from `users123` where user_email = '$user_email'";
    $result = mysqli_query($conn, $existSql);
    $numRows = mysqli_num_rows($result);
    if ($numRows > 0) {
        echo '$numRows ';                   
        // $showError = "Email already in use";
         echo "<script> alert('Email already in use.');
        window.location.href='/forum/index.php';</script>";

    } else {
        if ($pass == $cpass) {
            // $hash = password_hash($pass, PASSWORD_DEFAULT);
            $sql = "INSERT INTO `users123` (`first_name`, `last_name`, `user_email`, `user_pass`) VALUES ('$user_first', '$user_last', '$user_email', '$pass')";
            // $sql = "INSERT INTO `users123` (`first_name`, `last_name`, `user_email`, `user_pass`) VALUES (`$user_first`, `$user_last`, '$user_email', '$pass')";
            $result = mysqli_query($conn, $sql);

            if ($result) {
                $showAlert = true;
                echo "<script> alert('Login successfully');
        window.location.href='/forum/index.php';
        </script>";
                // header("Location: /forum/index.php?signupsuccess=true");
                exit();
            }
        } else {
            // $showError = "Passwords do not match";
             echo "<script> alert('Password do not Match.');
        window.location.href='/forum/index.php';</script>";
        }
    }
    // header("Location: /forum/index.php?signupsuccess=false&error=$showError");
}