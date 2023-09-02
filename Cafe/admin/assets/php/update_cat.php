<?php
session_start();
include 'connect.php';
$name = $_POST['cat_name'];
$ct = $_POST['ct'];

// UPDATE DATA
$sql = "update categories set cat_name='$name' where cat_id = '$ct'";
if($con->query($sql)){
    $_SESSION['suc'] = "แก้ไขข้อมูลสำเร็จ";
    header("location:../../edit_cat.php?ct=$ct");
}
else{
    $_SESSION['error'] = "แก้ไขข้อมูลไม่สำเร็จ " . $con->error;
    header("location:../../edit_cat.php?ct=$ct");
}