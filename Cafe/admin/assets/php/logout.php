<?php
session_start();
unset($_SESSION['e_id']);
unset($_SESSION['error']);
$_SESSION['suc'] = 'ออกจากระบบสำเร็จ';
header("location:../../index.php");