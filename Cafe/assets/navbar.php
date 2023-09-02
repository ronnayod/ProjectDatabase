<nav class="navbar navbar-expand-lg navbar-light fixed-top "style="background: linear-gradient(90deg, rgba(131,58,180,1) 0%, rgba(253,29,29,1) 50%, rgba(252,176,69,1) 100%);>
    <div class="container">
        <a class="navbar-brand" href="index.php">
            <img src="pngaaa.com-340250.png" alt="" width="25" height="25">
            King_Cafe
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="index.php">หน้าแรก
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="cart.php">ตะกร้าสินค้า</a>
                </li>
                <?php
                if(isset($_SESSION['c_id'])){
                ?>
                    <li class="nav-item">
                        <a class="nav-link" href="user.php">บัญชีของฉัน</a>
                    </li>
                <li class="nav-item">
                    <a class="nav-link" href="assets/php/logout.php">ออกจากระบบ</a>
                </li>
                <?php
                }else{
                ?>
                    <li class="nav-item">
                        <a class="nav-link" href="login.php">เข้าสู่ระบบ</a>
                    </li>
                <?php
                }
                ?>
            </ul>
        </div>
    </div>
</nav>