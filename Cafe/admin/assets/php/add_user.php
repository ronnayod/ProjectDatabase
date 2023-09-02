<?php
    session_start();
    include 'connect.php';
    $fname = $_POST['fname'];
    $lname = $_POST['lname'];
    $username = $_POST['username'];
    $password = mysqli_real_escape_string($con,$_POST['password']);
    $pass = md5($password);

    // INSERT DATA TO CUSTOMER TABLE
    $sql = "insert into customer (fname,lname,username,password) value ('$fname','$lname','$username','$pass')";
    if($con->query($sql)){
        $_SESSION['suc'] = "เพิ่มผู้ใช้สำเร็จ";
        header("location:../../add_user.php");
    }
    else{
        $_SESSION['suc'] = "เพิ่มผู้ใช้ไม่สำเร็จ " . $con->error;
        header("location:../../add_user.php");
    }