<?php
$mysql_hostname = "localhost";
$mysql_user = "aceonhff_netfonds";
$mysql_password = "IVyYc%QI7QW5";
$mysql_database = "aceonhff_netfonds";
$prefix = "";
 
$bd = mysqli_connect($mysql_hostname, $mysql_user, $mysql_password) or die("Could not connect database");
mysqli_select_db($bd, $mysql_database) or die("Could not select database");
?>