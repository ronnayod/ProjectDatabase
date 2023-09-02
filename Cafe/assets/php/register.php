<?php
session_start();
include '../../admin/assets/php/connect.php';

$fname = $_POST['fname'];
$lname = $_POST['lname'];
$username = $_POST['username'];
$password = mysqli_real_escape_string($con,$_POST['password']);
$pass = md5($password);

// INSERT DATA
$sql = "insert into customer (fname,lname,username,password) values ('$fname','$lname','$username','$pass')";
if($con->query($sql)){
    $_SESSION['suc'] = "สมัครสมาชิกสำเร็จ";
    header("location:../../login.php");
    }
else{
    $_SESSION['error'] = "สมัครสมาชิกไม่สำเร็จ " . $con->error;
    header("location:../../login.php");
}