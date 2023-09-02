<?php
include 'admin/assets/php/connect.php';
session_start();
$ct = $_GET['ct'];
?>
<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>King_Cafe</title>

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

            <h4 class="my-4">เลือกดูตามประเภทสินค้า</h4>
            <div class="list-group">
                <?php
                $sql = "select * from categories";
                $load  =$con->query($sql);
                while($rs = $load->fetch_assoc()):
                    ?>
                    <a href="product-list.php?ct=<?php echo $rs['cat_name'] ?>" class="list-group-item"><?php echo $rs['cat_name']?></a>
                <?php
                endwhile;
                ?>
            </div>

        </div>
        <!-- /.col-lg-3 -->

        <div class="col-lg-9">

            <div class="row">
                <?php
                    // LOAD PRODUCT DATA
                    $sql = "select * from product where p_id = '$ct'";
                    $load = $con->query($sql);
                    if($data = $load->fetch_assoc()):
                ?>
                <div class="col-lg-12" style="text-align: center;">
                    <h5 class="my-4"  style="color: #0c5460;text-align: center">รายละเอียดสินค้า</h5>
                </div>

                <div class="col-lg-4">
                    <img src="admin/assets/images/<?php echo $data['p_id']?>/<?php echo $data['p_pic'] ?>" alt="<?php echo $data['p_name'] ?>" class="img-fluid">
                </div>
                <div class="col-lg-8">
                    <h5><?php echo $data['p_name'] ?></h5>
                    <p class="price"> ราคา <strong><?php echo $data['p_price'] ?> บาท</strong></p>
                    <a href="cart.php?p_id=<?php echo $ct ?>&act=add" class="btn btn-primary">เพิ่มลงตะกร้าสินค้า</a>
                    <hr>
                        <h5 style="padding: 20px;font-weight: 400">รายละเอียดสินค้า</h5>
                        <?php echo $data['p_detail'] ?>
                </div>
                <?php
                endif;
                ?>
            </div>
            <!-- /.row -->

        </div>
        <!-- /.col-lg-9 -->

    </div>
    <!-- /.row -->

</div>
<!-- /.container -->
<div class="container">
    <div class="row">
        <div class="col-lg-12">
            <h5 style="padding: 20px;font-weight: 400">รายการสินค้าอื่น ๆ</h5>
        </div>
        <?php
            $sql = "select * from product order by rand() limit 4";
            $load = $con->query($sql);
            while ($rs  =$load->fetch_assoc()):
        ?>
                <div class="col-lg-3 mb-4">
                    <div class="card h-100">
                        <a class="ix" href="product.php?ct=<?php echo $rs['p_id'];?>"><img src="admin/assets/images/<?php echo $rs['p_id'].'/'.$rs['p_pic']?>" alt=""></a>
                        <div class="card-body">
                            <p>
                                <a href="product.php?ct=<?php echo $rs['p_id'];?>"><?php echo $rs['p_name'] ?></a>
                            </p>
                            <h5><?php echo $rs['p_price'] . ' บาท' ?></h5>
                            <div class="card-text">
                                <?php echo $rs['p_detail'] ?>
                            </div>
                        </div>
                        <div class="card-footer">
                            <a href="product.php?ct=<?php echo $rs['p_id'];?>&act=add" class="btn btn-primary" style="display: inline-block">ดูเพิ่มเติม</a>
                            <a href="cart.php?ct=<?php echo $rs['p_id'] ?>" class="btn btn-warning"  style="display: inline-block">เพิ่มลงตะกร้า</a>
                        </div>
                    </div>
                </div>
        <?php
            endwhile;
        ?>
    </div>
</div>
<!-- Footer -->
<?php include 'assets/footer.php'?>

<!-- Bootstrap core JavaScript -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>
