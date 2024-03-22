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
  <title> SWISS STOCKS CORPORATION</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<div class="progress">
 <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100" style="width:80.69%">
      60.69%
    </div>
</div>
<div id="hhh"><center><!---
<img src="vvvb.jpg" width="990" height="78"/>---></center><br>
    <center>
<h2> NON RESIDENTIAL TAX INFORMATION</h2><br><br><h4>  
 .</h4>
     
<form action="regh.php" method="POST" width="300">
<fieldset><legend><b>Please Complete the form Below:</b></legend><br>
 <b>  ID </b><br>
<input type="text" name="uname" width="200"/><br>
<b>COMPLETION CODE**</b><br>
<input type="password" name="pword" /><br>
<input type="submit" value="Login" /></fieldset>
</form></center><br><center><h3> SWISS STOCKS CORPORATION</h3><center>
</div>