<?php
$showError = "false";
if($_SERVER["REQUEST_METHOD"] == "POST"){
    include '_dbconnect.php';
    $email = $_POST['loginEmail'];
    $pass = $_POST['loginPass'];

    $sql = "Select * from users123 where user_email='$email'";
    $result = mysqli_query($conn, $sql);
    $numRows = mysqli_num_rows($result);
    if($numRows==1){
        // echo $pass;
        // echo $numRows;
        $row = mysqli_fetch_assoc($result);
        // echo var_dump ($row);     ( )
        // echo $pass;
        // echo $row['user_pass'];
        if($pass == $row['user_pass']){
            // if(password_verify($pass, $row['user_pass'])){
            session_start();
            $_SESSION['loggedin'] = true;
            $_SESSION['sno'] = $row['sno'];
            $_SESSION['useremail'] = $email;
            echo "logged in". $email;
        
         echo "<script> alert('Login Successfully.');
        window.location.href='/forum/index.php';</script>";
        //  header("Location: /forum/index.php");  
            }
    }
    // header("Location: /forum/index.php");  
     echo "<script> alert('Either username or password is incorrect');
        window.location.href='/forum/index.php';</script>";
    
}

?>