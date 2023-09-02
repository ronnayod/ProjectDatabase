<?php
session_start();
unset($_SESSION['c_id']);
unset($_SESSION['error']);
$_SESSION['suc'] = 'ออกจากระบบสำเร็จ';
header("location:../../login.php");