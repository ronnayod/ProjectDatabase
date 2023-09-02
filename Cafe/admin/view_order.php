<?php
error_reporting(0);
include 'assets/php/connect.php';
session_start();
$order = $_GET['sale_id'];
if(!isset($_SESSION['e_id'])){
    $_SESSION['error'] = "กรุณาเข้าสู่ระบบ";
    header("location:index.php");
}
// LOAD CUSTOMER ID
$sql = "select c_id from sale where sale_id = '$order'";
$load =$con->query($sql);
if($data = $load->fetch_assoc()) $c_id = $data['c_id'];

// LOAD CUSTOMER NAME
$nsql = "select fname , lname from customer where c_id = '$c_id'";
$nload = $con->query($nsql);
if($ndata = $nload->fetch_assoc()){
    $fname = $ndata['fname'];
    $lname = $ndata['lname'];
}
$total=0;
?>
<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>รายละเอียดการสั่งซื้อ</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <link href="css/shop-homepage.css" rel="stylesheet">

</head>

<body>

<!-- Navigation -->
<?php require_once 'assets/navbar.php'?>

<!-- Page Content -->
<div class="container">
    <div class="row">
        <div class="col-lg-3">
                <h4 class="my-4" style="margin-top:6.0rem!important;">จัดการคำสั่งซื้อ</h4>
                <div class="accordion" id="accordionExample">
                    <div class="card">
                        <div class="card-header p-0" id="headingOne">
                            <h2 class="mb-0">
                                <button class="btn btn-light btn-block text-left p-3 rounded-0" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                    คำสั่งซื้อ
                                </button>
                            </h2>
                        </div>

                        <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
                            <div class="card-body">
                                <div class="list-group">
                                    <a href="order.php" class="list-group-item">ดูคำสั่งซื้อ</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        </div>
        <!-- /.col-lg-3 -->
        <div class="col-lg-9 my-4" style="margin-top: 6rem!important;">
            <div class="row">
                <div class="col-lg-12">
                    <h5>รายละเอียดคำสั่งซื้อหมายเลข <?php echo $order ?></h5>
                    <h5>สั่งซื้อโดย <?php echo $fname . ' ' . $lname ?></h5>
                </div>
                <table class="table table-hover">
                    <thead>
                    <tr align="center" valign="middle">
                        <th>
                            ลำดับ
                        </th>
                        <th>
                            รหัสสินค้า
                        </th>
                        <th>รูปสินค้า</th>
                        <th>ชื่อสินค้า</th>
                        <th>
                            จำนวน
                        </th>
                        <th>รวม</th>
                    </tr>
                    </thead>
                    <tbody>
                    <?php
                    $sql = "select * from sale_detail where sale_id = '$order'";
                    $load  = $con->query($sql);
                    while($data = $load->fetch_assoc()):
                        ?>
                        <tr align="center" valign="middle">
                            <td><?php echo $i+=1 ?></td>
                            <td><?php echo $data['p_id'] ?></td>
                            <?php
                            // LOAD PRODUCT DATA
                            $psql = "select p_name , p_pic from product where p_id = '".$data['p_id']."'";
                            $plaod = $con->query($psql);
                            if($rs = $plaod->fetch_assoc()):
                                ?>
                                <td><img width="50px" src="/admin/assets/images/<?php echo $data['p_id'] ?>/<?php echo $rs['p_pic'] ?>"></td>
                                <td><?php echo $rs['p_name'] ?></td>
                            <?php
                            endif;
                            ?>
                            <td><?php echo $data['p_amount'] ?></td>
                            <td><?php echo $data['p_sell'] ?></td>
                        </tr>


                    <?php
                        $total+= $data['p_sell'];
                    endwhile;
                    ?>
                    <tr align="right">
                        <td colspan="5">
                            ราคารวม
                        </td>
                        <td align="center">
                            <?php echo $total ?>
                        </td>
                    </tr>
                    </tbody>
                </table>
                <div style="padding: 50px"></div>
                <div class="col-lg-12">
                    <a style="float: right" href="assets/php/del_order.php?sale_id=<?php echo $order ?>" class="btn btn-danger">ลบคำสั่งซื้อ</a>
                </div>
                <div style="padding: 50px"></div>
            </div>
            <!-- /.row -->
        </div>
        <!-- /.col-lg-9 -->

    </div>
    <!-- /.row -->

</div>
<!-- /.container -->

<!-- Bootstrap core JavaScript -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>
