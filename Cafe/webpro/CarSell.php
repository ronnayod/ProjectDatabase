<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
    $fname = $_POST['fname'];
    $lname = $_POST['lname'];
    $Money = $_POST['Money'];
    $down = intval($_POST['down']);
    

    echo "$fname" ,"  ", "$lname"," ","เงินจำนวน : ", "$Money", " จำนวนงวด : " ,"$down <br>" ;
    
    $buy = $Money*$down ;
    //echo $buy;
 

    if ($buy >= 179900 ){
        echo "รถที่สามารถซื้อได้ <br> " ;
        echo "<img src='images/jazz.png' alt=''>" ;

    }



    ?>
</body>
</html>