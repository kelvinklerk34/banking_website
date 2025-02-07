<?php
require_once './library/config.php';
require_once './library/functions.php';

$errorMessage = '&nbsp;';

?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><?php echo $site_title; ?></title>
<link href="css/layout.css" rel="stylesheet" type="text/css" />
<link href="css/styles.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="container">
  
	<div id="top">
		<img src="images/OnlineBanking-logo.png" style="float:left;"/>
	</div>
  
  <div id="content">
  
	  <div id="login">
	  
		<div id="logbox">
		  <h3><strong>Account Registration successful</strong></h3>
		  <p>Please wait till adminstrator validate your account, then you can login into your account.</p>
		  <p>If you are already register, or active user then please <a href="login.php">Login Now</a></p>
		</div>
		
	  </div>
  
  </div>
  
  <div id="footer">
    <?php include('include/footer.php'); ?>
  </div>
</div>
</body>
</html>