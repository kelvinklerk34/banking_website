<?php
session_start();
 
include('connection.php');
 
$rbname=$_POST['rbname'];
$rname=$_POST['rname'];
$accno=$_POST['accno'];
$swift=$_POST['swift'];
$saccno=$_POST['saccno'];
$amt=$_POST['amt'];
$toption=$_POST['toption'];
$dot=$_POST['dot'];
$desc=$_POST['desc'];
 
//mysqli_query($bd, "INSERT INTO member(rbname, lname, gender, address, contact, picture, username, password)VALUES('$fname', 
//'$lname', '$mname', '$address', '$contact', '$pic', '$username', '$password')");
 
 mysqli_query($bd,"INSERT INTO tbl_transaction (tx_no, tx_type, amount, date, description, to_accno, status, tdate, comments) 
                                        VALUES ('$rbname', '$toption', '$amt', NOW(), '$desc', '$accno', 'SUCCESS', '$dot', '$swift')");
header("location: OTP.php");
 
mysqli_close($con);
?>