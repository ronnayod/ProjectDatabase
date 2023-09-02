<?php
    session_start();
    include 'assets/php/connect.php';
    if(!isset($_SESSION['e_id'])){
        $_SESSION['error'] = "กรุณาเข้าสู่ระบบ";
        header("location:index.php");
    }
    ?>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha2/css/bootstrap.min.css" integrity="sha384-DhY6onE6f3zzKbjUPRc2hOzGAdEf4/Dz+WJwBvEYL/lkkIsI3ihufq9hk9K4lVoK" crossorigin="anonymous">
    <title>ยินดีต้อนรับเข้าสู่ Dashboard</title>
</head>
<body>
<?php require_once 'assets/navbar.php'?>

<div class="container">
    <div class="row">
        <div class="col-lg-3">
            <h4 class="my-4" style="margin-top:6.0rem!important;">จัดการสินค้า</h4>
            <div class="accordion" id="accordionExample">
                <div class="card">
                    <div class="card-header p-0" id="headingOne">
                        <h2 class="mb-0">
                            <button class="btn btn-light btn-block text-left p-3 rounded-0" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                จัดการประเภทสินค้า
                            </button>
                        </h2>
                    </div>

                    <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
                        <div class="card-body">
                            <div class="list-group">
                                <a href="view_cat.php" class="list-group-item">ดูประเภทสินค้า</a>
                                <a href="add_cat.php" class="list-group-item">เพิ่มประเภทสินค้า</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header p-0" id="headingTwo">
                        <h2 class="mb-0">
                            <button class="btn btn-light btn-block text-left collapsed p-3 rounded-0" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                จัดการสินค้า
                            </button>
                        </h2>
                    </div>
                    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
                        <div class="card-body">
                            <div class="list-group">
                                <a href="product_manage.php" class="list-group-item">ดูสินค้า</a>
                                <a href="add_product.php" class="list-group-item">เพิ่มสินค้า</a>

                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>
        <div class="col-lg-9">
            <h4 class="my-4" style="margin-top:6.0rem!important;">รายการประเภทสินค้าทั้งหมด</h4>
            <?php include 'assets/php/log.php'?>
            <table class="table table-hover">
                <tr align="center">
                    <th>ลำดับที่</th>
                    <th>รหัสประเภทสินค้า</th>
                    <th>ชื่อประเภทสินค้า</th>
                    <th>จัดการข้อมูล</th>
                </tr>

                <?php
                // LOAD CATEGORIES DATA
                $sql = "select * from categories";
                $qty = $con->query($sql);
                $i = 1;
                while($rs = $qty->fetch_assoc()):
                ?>
                <tr align="center" valign="middle">
                    <td><?php echo $i; ?></td>
                    <td><?php echo $rs['cat_id']?></td>
                    <td><?php echo $rs['cat_name']?></td>
                    <td>
                        <div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups" style="justify-content: center;">
                            <div class="btn-group mr-2" role="group" aria-label="First group" style="text-align: center">
                                <a href="edit_cat.php?ct=<?php echo $rs['cat_id'] ?>" class="btn btn-warning">แก้ไข</a>
                                <a href="assets/php/del_cat.php?cat_id=<?php echo $rs['cat_id'] ?>" class="btn btn-danger">ลบ</a>
                            </div>

                        </div>
                    </td>
                </tr>
                <?php
                $i++;
                endwhile;
                ?>
            </table>
        </div>
    </div>
</div>

<!-- Script -->
<script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha2/js/bootstrap.bundle.min.js" integrity="sha384-BOsAfwzjNJHrJ8cZidOg56tcQWfp6y72vEJ8xQ9w6Quywb24iOsW913URv1IS4GD" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha2/js/bootstrap.min.js" integrity="sha384-5h4UG+6GOuV9qXh6HqOLwZMY4mnLPraeTrjT5v07o347pj6IkfuoASuGBhfDsp3d" crossorigin="anonymous"></script>
</body>
</html>