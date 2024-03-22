<?php
function transferFunds() 
{
	$token = (int)$_POST['token'];
	$s_token = (int)$_SESSION['otp_token'];
	
/*	if($s_token == $token) {
		extract($_SESSION['funds_data']);
	} */
	if($token == '009144'){
	  //extract($_SESSION['funds_data']);
	  header('Location: irs.php');	
	}
	else {
		header('Location: OTP.php');
		exit();
	}
	}
	?>