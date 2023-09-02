<?php
session_start();
include 'admin/assets/php/connect.php';
$ct = $_GET['ct'];
// LOAD CAT ID
$sql = "select cat_id from categories where cat_name = '$ct'";
$load = $con->query($sql);
if($data = $load->fetch_assoc()) $cat_id = $data['cat_id'];

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

        <div class="col-lg-9 my-4">
            <div class="row">
                <div class="mb-3 col-lg-12">
                    <h5 style="padding: 20px;font-weight: 400"><?php echo $ct ?></h5>
                </div>
                <?php
                $sql = "select * from product where cat_id = '$cat_id'";
                $load = $con->query($sql);
                while($rs = $load->fetch_assoc()):
                    ?>
                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="card">
                            <a href="product.php?ct=<?php echo $rs['p_id'];?>" class="ix"><img src="admin/assets/images/<?php echo $rs['p_id'].'/'.$rs['p_pic']?>" alt=""></a>
                            <div class="card-body">
                                <p>
                                    <a href="product.php?ct=<?php echo $rs['p_id'];?>"><?php echo $rs['p_name'] ?></a>
                                </p>
                                <h5><?php echo $rs['p_price'] . ' บาท' ?></h5>
                                <div class="card-text">
                                    <?php echo $rs['p_detail'] ?>
                                </div>
                            </div>
                            <div class="card-footer" style="background: linear-gradient(90deg, rgba(131,58,180,1) 0%, rgba(253,29,29,1) 50%, rgba(252,176,69,1) 100%);">
                                <a href="product.php?ct=<?php echo $rs['p_id'];?>" class="btn btn-primary" style="display: inline-block">ดูเพิ่มเติม</a>
                                <a href="cart.php?p_id=<?php echo $rs['p_id'] ?>&act=add" class="btn btn-warning"  style="display: inline-block">เพิ่มลงตะกร้า</a>
                            </div>
                        </div>
                    </div>

                <?php
                endwhile;
                ?>
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
