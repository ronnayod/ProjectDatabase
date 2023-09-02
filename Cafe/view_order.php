<?php
include 'admin/assets/php/connect.php';
session_start();
error_reporting(0);
$sale_id = $_GET['sale_id'];
if(!isset($_SESSION['c_id'])){
    $_SESSION['error'] = "กรุณาเข้าสู่ระบบ";
    header("location:index.php");
}
$c_id = $_SESSION['c_id'];
// LOAD CUSTOMER NAME
$nsql = "select fname from customer where c_id = '$c_id'";
$nload = $con->query($nsql);
if($ndata = $nload->fetch_assoc()) $fname = $ndata['fname'];
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
<div class="container"  style="margin-top: 5.0rem!important;">
    <div class="row">
        <div class="mb-3 col-lg-12">
            <h4>ยินดีต้อนรับคุณ <?php echo $fname ?></h4>
        </div>
        <div class="col-lg-3">
            <div class="list-group">
                <a href="user.php" class="list-group-item">ประวัติคำสั่งซื้อ</a>
                <a href="user_setting.php" class="list-group-item">แก้ไขข้อมูลส่วนตัว</a>
            </div>

        </div>
        <!-- /.col-lg-3 -->

        <div class="col-lg-9">

            <div class="row">
                <div class="col-lg-12">
                    <h5>รายละเอียดคำสั่งซื้อหมายเลข <?php echo $sale_id ?></h5>
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
                        $sql = "select * from sale_detail where sale_id = '$sale_id'";
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
                            <td><img  width="50px" src="admin/assets/images/<?php echo $data['p_id'] ?>/<?php echo $rs['p_pic'] ?>" alt=""></td>
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
            </div>
            <!-- /.row -->
        </div>
        <!-- /.col-lg-9 -->

    </div>
    <!-- /.row -->

</div>
<!-- /.container -->
<!-- Footer -->
<?php include 'assets/footer.php'?>

<!-- Bootstrap core JavaScript -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>
