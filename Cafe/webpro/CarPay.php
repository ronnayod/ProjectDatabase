<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form method="post" action="CarSell.php">

    <label for="fname">First name:</label><br>
    <input type="text" id="fname" name="fname" value=""><br>
    <label for="lname">Last name:</label><br>
    <input type="text" id="lname" name="lname" value=""><br>
    <label for="Money">Money:</label><br>
    <input type="number" id="Money" name="Money" value=""><br>
    <label for="down">งวด:</label><br>
    <select name="down" id="down">
    <option value="36">36งวด</option>
    <option value="48">48งวด</option>
    <option value="60">60งวด</option>
    <option value="72">72งวด</option>
    </select>
    <input type="submit" value="Submit">
</form> 

</body>
</html>