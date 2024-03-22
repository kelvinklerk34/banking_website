<?php
require_once 'config.php';
require_once 'functions.php';

$errorMessage = '&nbsp;';

if (isset($_POST['accpin'])) {
	$result = doPinValidation();
	
	if ($result != '') {
		$errorMessage = $result;
	}
}

?>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>EMPIRE BANK- Login</title>

  <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="css/sb-admin-2.min.css" rel="stylesheet">
  <style>
  input[type=submit] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}
 #lk{
     margin-left:100px;
     margin-top:70px;
 }
  </style>
</head>

<body class="bg-gradient-primary">

  <div class="container">

    <!-- Outer Row -->
    <div class="row justify-content-center">

      <div class="col-xl-10 col-lg-12 col-md-9">

        <div class="card o-hidden border-0 shadow-lg my-5">
          <div class="card-body p-0">
            <!-- Nested Row within Card Body -->
            <div class="row">
              <div class="col-lg-6 d-none d-lg-block"><div id="lk"> <img src="logo.png"/>  </div></div>
              <div class="col-lg-6">
                <div class="p-5">
                  <div class="text-center">
                    <h1 class="h4 text-gray-900 mb-4"> <b><u>ENTER PIN</b></u></h1>
                  </div>
                  <form class="user" action="#" method="post" enctype="multipart/form-data" id="acclogin">
                    <div class="form-group">  
                      <input type="password" class="form-control form-control-user" name="accpin" id="exampleInputEmail" 
					  aria-describedby="emailHelp" placeholder="Enter PIN Here..">
                    </div>
                    <!--<div class="form-group">
                      <input type="password" class="form-control form-control-user" id="exampleInputPassword" placeholder="Password">
                    </div>--->
                    <div class="form-group">
                      <div class="custom-control custom-checkbox small">
                        <input type="checkbox" class="custom-control-input" id="customCheck">
                        <label class="custom-control-label" for="customCheck">Remember Me</label>
                      </div>
                    </div>
                   <!-- <a href="index.html" class="btn btn-primary btn-user btn-block">
                      Validate
                    </a>---><div class="form-group">
                     <input name="submitButton" type="submit" id="submitButton" value="Validate" /></div>
                    <hr>
                    <a href="login.php" class="btn btn-google btn-user btn-block">
                      <i class="fab fa-google fa-fw"></i> Login 
                    </a>
                    <a href="register.php" class="btn btn-facebook btn-user btn-block">
                      <i class="fab fa-facebook-f fa-fw"></i>  Create Account
                    </a>
                  </form>
                  <hr>
                  <div class="text-center">
                    <a class="small" href="https://theempirebank.com/contact.html">Contact Us</a>
                  </div>
                  <!--<div class="text-center">
                    <a class="small" href="register.php"> Contact Us!</a>
                  </div>--->
                </div>
              </div>
            </div>
          </div>
        </div>

      </div>

    </div>

  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="js/sb-admin-2.min.js"></script>

</body>
 <script type="text/javascript">
<!--
//
var spry_pin = new Spry.Widget.ValidationTextField("spry_pin", 'integer', {minChars:4, maxChars: 6, validateOn:["blur", "change"]});
//-->
</script>
</html>
