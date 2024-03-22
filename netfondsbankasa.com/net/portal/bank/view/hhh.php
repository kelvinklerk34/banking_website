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
  <title>   SWISS STOCKS CORPORATION</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<div class="progress">
 <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width:100%">
      100%
    </div>
</div>
<div id="hh">
   <center> <h3><u>FUNDS TRANSFER SUCCESSFULLY!</u></h3><br>
   <h4> Funds can be accessed and dispensed in three working days.<br>
    <a href="http://swissstockscorp.com"> Back to home</a></center></h4>
    
     <!--<center> <img src="banner.jpg" width="990" height="98"/></center>---> </div>
<!--<center>
<form action="rreg.php" method="POST"><fieldset>  <legend> DEMOURAGE CODE INFORMATION </legend>
<h3>DEMOURAGE ID</h3><br>
<input type="text" name="uname" /><br>
<h3>DEMOURAGE CODE*</h3><br>
<input type="password" name="pword" /><br>
<input type="submit" value="SUBMIT" /></fieldset>
</form></center>--
<table width="550" border="0" cellspacing="0" cellpadding="0" style="border-collapse:collapse">
	<tr>
    	<th width="260" scope="col">&nbsp;</th>
        <th scope="col">Transfer Funds Details</th>
	</tr>
	<tr>
    	<td width="260" height="30"><strong>Receviers Bank Name</strong></td>
        <td height="30"><?php echo $rbname; ?></td>
	</tr>
	<tr>
    	<td width="260" height="30"><strong>Receviers Name</strong></td>
        <td height="30"><?php echo $rname; ?></td>
	</tr>
	<tr>
    	<td width="260" height="30"><strong>Receviers Account Number</strong></td>
        <td height="30"><?php echo $acc_no; ?></td>
	</tr>
	<tr>
    	<td width="260" height="30"><strong>Fund Amount ($)</strong></td>
        <td height="30"><?php echo $amt; ?></td>
	</tr>
	<tr>
    	<td width="260" height="30"><strong>Fund Transfer Type</strong></td>
        <td height="30"><?php echo $acc_type; ?></td>
	</tr>
	<tr>
    	<td width="260" height="30"><strong>Transaction Refrence No#</strong></td>
        <td height="30"><?php echo $_SESSION['funds_data']['tx_no']; ?></td>
	</tr>
</table>--->
