<?php
    include 'connect.php';
    session_start();
    $p_id = $_POST['p_id'];
    $cat_id = $_POST['cat_id'];
    $p_name = $_POST['p_name'];
    $p_price = $_POST['p_price'];
    $p_detail = $_POST['p_detail'];
    $file = $_FILES["p_pic"]["name"];

    mkdir("../images/".$p_id,0777,true);

    if(move_uploaded_file($_FILES["p_pic"]["tmp_name"],"../images/".$p_id."/".$file)){
        $sql = "insert into product (p_id,cat_id,p_name,p_price,p_detail,p_pic) values ('$p_id','$cat_id','$p_name','$p_price','$p_detail','$file')";
        if($con->query($sql)){
            $_SESSION['suc'] = "เพิ่มสินค้าสำเร็จ";
            header("location:../../add_product.php");
        }
        else{
            $_SESSION['error'] = "ไม่สามารถเพิ่มรายการสินค้าได้ " . $con->error;
        }
    }
    else{
        $_SESSION['error'] = "ไม่สามารถเพิ่มรายการสินค้าได้ " . $con->error;
    }