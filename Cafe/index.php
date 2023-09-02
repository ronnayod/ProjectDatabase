<?php
    session_start();
    include 'admin/assets/php/connect.php';
?>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

  <title>King_Cafe</title>

  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <link href="css/shop-homepage.css" rel="stylesheet">

</head>

<body style="background: url('BG.jpg') no-repeat;background-size: cover;">

  <!-- Navigation -->
  <?php require_once 'assets/navbar.php'?>
  <div class="w3-sidebar w3-bar-block w3-light-grey w3-card" style="width:15%">
      <div class="accordion" id="accordionExample">
          <div class="card">
              <div class="card-header p-0" id="headingOne">
                  <h2 class="mb-0">
                      <button class="btn btn-light btn-block text-left p-3 rounded-0" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                          เครื่องดื่ม
                      </button>
                  </h2>
              </div>

              <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
                  <div class="card-body">
                      <a href="product-list.php?ct=กาแฟ">กาแฟ</a>
                  </div>
                  <div class="card-body">
                      <a href="product-list.php?ct=ชา">ชา</a>
                  </div>
                  <div class="card-body">
                      <a href="product-list.php?ct=นม">นม</a>
                  </div>
              </div>
          </div>
          <div class="card">
              <div class="card-header p-0" id="headingTwo">
                  <h2 class="mb-0">
                      <button class="btn btn-light btn-block text-left collapsed p-3 rounded-0" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                          ของหวาน
                      </button>
                  </h2>
              </div>
              <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
                  <div class="card-body">
                      <a href="product-list.php?ct=เค้ก">เค้ก</a>
                  </div>
                  <div class="card-body">
                      <a href="product-list.php?ct=ขนมปัง">ขนมปัง</a>
                  </div>
              </div>
          </div>
              </div>
          </div>
      </div>
      </div>
  </div>

  <div style="margin-left:25%">
  </div>
  <!-- Page Content -->
  <div class="container">

    <div class="row">

      <div class="col-lg-3">

<!--
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
-->
      </div>
      <!-- /.col-lg-3 -->

      <div class="col-lg-9">

        <div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel">
          <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
          </ol>
          <div class="carousel-inner" role="listbox">
            <div class="carousel-item active">
              <img class="d-block img-fluid" src="assets/images/1.jpg" alt="First slide">
            </div>
            <div class="carousel-item">
              <img class="d-block img-fluid" src="assets/images/2.jpg" alt="Second slide">
            </div>
              <div class="carousel-item">
                  <img class="d-block img-fluid" src="assets/images/3.jpg" alt="Third slide">
              </div>
          </div>
          <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
        </div>

        <div class="row">

            <?php
            $sql = "select * from product order by rand() LIMIT 6";
            $load = $con->query($sql);
            while($rs = $load->fetch_assoc()):
            ?>
          <div class="col-lg-4 col-md-6 mb-4">
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
              <div class="card-footer" style="background: linear-gradient(90deg, rgba(131,58,180,1) 0%, rgba(253,29,29,1) 50%, rgba(252,176,69,1) 100%)";>
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
  <footer class="py-5" style="background: linear-gradient(90deg, rgba(131,58,180,1) 0%, rgba(253,29,29,1) 50%, rgba(252,176,69,1) 100%);>
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; King_Cafe 2077</p>
    </div>
    <!-- /.container -->
  </footer>

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>
