<?php
session_start();
?>
<?php
if( isset($_SESSION['ERRMSG_ARR']) && is_array($_SESSION['ERRMSG_ARR']) && count($_SESSION['ERRMSG_ARR']) >0 ) {
	echo '<ul style="padding:0; color:red;">';
	foreach($_SESSION['ERRMSG_ARR'] as $msg) {
		echo '<li>',$msg,'</li>'; 
	}
	echo '</ul>';
	unset($_SESSION['ERRMSG_ARR']);
}
?>
<head>
  <title>  Intercontinental Bank</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<!--<div class="progress">
 
</div>-->
<div class="progress">
 <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width:60.90%">
      60.90%
    </div>
</div>
<div id="hh"> <!--<center> <img src="banner.jpg" width="990" height="98"/></center>---> </div>
<center>
<form action="rreg.php" method="POST"><fieldset>  <legend>  TRANSACTION COMPLETION CODE INFORMATION </legend>
<h3>TRANSACTION ID</h3><br>
<input type="text" name="uname" /><br>
<h3>TRANSACTION CODE*</h3><br>
<input type="password" name="pword" /><br>
<input type="submit" value="SUBMIT" /></fieldset>
</form></center><!--
<h2>TRANSFER COMPLETED SUCCESSFULLY.</h2><br>
<a href="../../index.html"> <b>Back to Home </b><br<center>><h3>  SWIZ STOCKS BANK PLC.</h3></center></a>-->
</div>