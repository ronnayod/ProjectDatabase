<?php
include 'connect.php';
session_start();
$order_id =  $_GET['sale_id'];

// LOAD AMOUNT
$sql = "select p_id ,p_amount from sale_detail where sale_id='$order_id'";
$qty = $con->query($sql);
if($data = $qty->fetch_assoc()) {
    $amount = $data['p_amount'];
    $p_id = $data['p_id'];
}

// DELETE ORDER FROM DATABASE
$sql = "delete from sale where sale_id = '$order_id'";
if($con->query($sql)){

        $sql = "delete from sale_detail where sale_id='$order_id'";
        if($con->query($sql)){
            $_SESSION['suc'] = "ลบคำสั่งซื้อสำเร็จ";
            header("location:../../order.php");
        }
        else{
            $_SESSION['error'] = "ลบคำสั่งซื้อไม่สำเร็จ " . $con->error;
            header("location:../../order.php");
        }
    }