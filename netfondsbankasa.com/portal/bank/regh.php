<?php
session_start();
$errmsg_arr = array();
$errflag = false;
// configuration
$dbhost 	= "localhost";
$dbname		= "aceonhff_netfonds";
$dbuser		= "aceonhff_netfonds";
$dbpass		= "[QIDA~e@b$pJ";

// database connection
$conn = new PDO("mysql:host=$dbhost;dbname=$dbname",$dbuser,$dbpass);

// new data

$user = $_POST['token'];
//$password = $_POST['pword'];

if($user == '') {
	$errmsg_arr[] = 'You must enter your  the Transaction Authorization Code';
	$errflag = true;
}
/*if($password == '') {
	$errmsg_arr[] = 'You must enter your Password';
	$errflag = true;
}*/

// query
$result = $conn->prepare("SELECT * FROM ivs WHERE username= :hjhjhjh");
$result->bindParam(':hjhjhjh', $user);
//$result->bindParam(':asas', $password);
$result->execute();
$rows = $result->fetch(PDO::FETCH_NUM);
if($rows > 0) {
header("location: wac.php");
}
else{
	$errmsg_arr[] = 'Transaction Authorization Code Invalid';
	$errflag = true;
}
if($errflag) {
	$_SESSION['ERRMSG_ARR'] = $errmsg_arr;
	session_write_close();
	header("location: imf.php");
	exit();
}

?>