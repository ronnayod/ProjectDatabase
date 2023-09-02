<?php
error_reporting( error_reporting() & ~E_NOTICE );
session_start();
if(!isset($_SESSION['c_id'])) {
    $_SESSION['error'] = "กรุณาเข้าสู่ระบบ";
    header("../../login.php");
}
require_once('../../admin/assets/php/connect.php');

// ORDER ID RANDOM
$sale_id = rand();

$c_id = $_SESSION['c_id'];
$p_qty = $_POST["p_qty"];
$total = 0;

// INSERT DATA TO SALE DB
$sql ="insert into sale values ('$sale_id','$c_id',1,CURRENT_TIMESTAMP )";
if($con->query($sql)){
    foreach ($_SESSION['shopping_cart'] as $p_id => $p_qty){
        // LOAD PRICE DATA
        $psql = "select * from product where p_id='$p_id'";
        $pload =$con->query($psql);
        if($data = $pload->fetch_assoc()){
            $total = $data['p_price'] * $p_qty;
            // INSERT DATA TO DB
            $insert = "insert into sale_detail (sale_id,p_id,p_amount,p_sell) values ('$sale_id','$p_id','$p_qty','$total')";
            if($con->query($insert)){
                $_SESSION['suc'] = 'บันทึกรายการสั่งซื้อสำเร็จ';
                foreach($_SESSION['shopping_cart'] as $p_id)
                {
                    unset($_SESSION['shopping_cart']);
                }
                header("location:../../user.php");
            }
            else{
                $_SESSION['error'] = 'บันทึกรายการสั่งซื้อไม่สำเร็จ ' . $con->error;
                header("location:../../user.php");
            }
        }
    }


}
?>