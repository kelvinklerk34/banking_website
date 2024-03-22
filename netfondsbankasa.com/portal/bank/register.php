<?php
require_once 'library/config.php';
require_once 'library/functions.php';

$errorMessage = '&nbsp;';

if (isset($_POST['firstname']) && isset($_POST['lastname'])) {
	$result = doRegister();
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

  <title>NET FONDS BANK</title>

  <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="css/sb-admin-2.min.css" rel="stylesheet">
  <style>
input[type=text], select {
  width: 400px;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=password]{
  width: 320px;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}
input[type=submit] {
  width: 390px;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

button[type=submit] {
  width:300px;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

button[type=submit]:hover {
  background-color: #45a049;
}

 
textarea {
  width: 550px;
  height: 150px;
  padding: 12px 20px;
  box-sizing: border-box;
  border: 2px solid #ccc;
  border-radius: 4px;
  background-color: #f8f8f8;
  font-size: 16px;
  resize: none;
}
.gy{
	
	height: 2200px;
}

</style>

</head>

<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

      <!-- Sidebar - Brand -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.php">
        <div class="sidebar-brand-icon rotate-n-15">
         <!-- <i class="fas fa-laugh-wink"></i>--->
        </div>
        <div class="sidebar-brand-text mx-3">NET FONDS BANK</div>
      </a>

      <!-- Divider -->
      <hr class="sidebar-divider my-0">

      <!-- Nav Item - Dashboard -->
      <li class="nav-item">
        <a class="nav-link" href="index.php">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>Dashboard</span></a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
       GENERAL
      </div>

      <!-- Nav Item - Pages Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
		aria-expanded="true" aria-controls="collapseTwo">
          <i class="fas fa-fw fa-cog"></i>
          <span> Menu</span>
        </a>
        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">Portfolio:</h6>
            <a class="collapse-item" href="http://netfondsbankasa.com/socket/product.html">Products</a>
            <a class="collapse-item" href="http://netfondsbankasa.com/socket/services.html">Profile/Services</a>
             <a class="collapse-item" href="http://netfondsbankasa.com/socket/">Home</a>
          </div>
        </div>
      </li>

      <!-- Nav Item - Utilities Collapse Menu -->
      <li class="nav-item active">
        <a class="nav-link" href="#" data-toggle="collapse" data-target="#collapseUtilities" 
		aria-expanded="true" aria-controls="collapseUtilities">
          <i class="fas fa-fw fa-wrench"></i>
          <span>Utilities</span>
        </a>
        <div id="collapseUtilities" class="collapse show" aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">Custom Utilities:</h6>
            <a class="collapse-item" href="login.php"> Log In</a>
            <a class="collapse-item active" href="changePassword.php"> Change Password</a>
            <a class="collapse-item" href="contact.php">Contact</a>
            <!--<a class="collapse-item" href="utilities-other.html">Other</a>--->
          </div>
        </div>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
        Addons
      </div>

      <!-- Nav Item - Pages Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="true" aria-controls="collapsePages">
          <i class="fas fa-fw fa-folder"></i>
          <span>Account Manager</span>
        </a>
        <!---<div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">Login Screens:</h6>
            <a class="collapse-item" href="login.html">Login</a>
            <a class="collapse-item" href="register.html">Register</a>
            <a class="collapse-item" href="forgot-password.html">Forgot Password</a>
            <div class="collapse-divider"></div>
            <h6 class="collapse-header">Other Pages:</h6>
            <a class="collapse-item" href="404.html">404 Page</a>
            <a class="collapse-item" href="blank.html">Blank Page</a>
          </div>
        </div>--->
      </li>

      <!-- Nav Item - Charts -->
      <li class="nav-item">
        <a class="nav-link" href="login.php">
          <i class="fas fa-fw fa-chart-area"></i>
          <span>Login Portal </span></a>
      </li>

      <!-- Nav Item - Tables --
      <li class="nav-item">
        <a class="nav-link" href="tables.php">
          <i class="fas fa-fw fa-table"></i>
          <span> </span></a>
      </li>---->

      <!-- Divider -->
      <hr class="sidebar-divider d-none d-md-block">

      <!-- Sidebar Toggler (Sidebar) -->
      <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
      </div>

    </ul>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Topbar -->
        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

          <!-- Sidebar Toggle (Topbar) -->
          <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
            <i class="fa fa-bars"></i>
          </button>

          <!-- Topbar Search --
          <form class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
            <div class="input-group">
              <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
              <div class="input-group-append">
                <button class="btn btn-primary" type="button">
                  <i class="fas fa-search fa-sm"></i>
                </button>
              </div>
            </div>
          </form>---->

          <!-- Topbar Navbar -->
          <ul class="navbar-nav ml-auto">

            <!-- Nav Item - Search Dropdown (Visible Only XS) -->
            <li class="nav-item dropdown no-arrow d-sm-none">
              <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-search fa-fw"></i>
              </a>
              <!-- Dropdown - Messages -->
              <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in" aria-labelledby="searchDropdown">
                <form class="form-inline mr-auto w-100 navbar-search">
                  <div class="input-group">
                    <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
                    <div class="input-group-append">
                      <button class="btn btn-primary" type="button">
                        <i class="fas fa-search fa-sm"></i>
                      </button>
                    </div>
                  </div>
                </form>
              </div>
            </li>

            <!-- Nav Item - Alerts -->
            <li class="nav-item dropdown no-arrow mx-1">
              <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-bell fa-fw"></i>
                <!-- Counter - Alerts --
                <span class="badge badge-danger badge-counter">3+</span>--->
              </a>
              <!-- Dropdown - Alerts -->
              <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="alertsDropdown">
                <h6 class="dropdown-header">
                  
                </h6>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="mr-3">
                    <div class="icon-circle bg-primary">
                      <i class="fas fa-file-alt text-white"></i>
                    </div>
                  </div>
                  <div>
                    <div class="small text-gray-500"> </div>
                    <span class="font-weight-bold"> </span>
                  </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="mr-3">
                    <div class="icon-circle bg-success">
                      <i class="fas fa-donate text-white"></i>
                    </div>
                  </div>
                  <div>
                    <div class="small text-gray-500"> </div>
                     
                  </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="mr-3">
                    <div class="icon-circle bg-warning">
                      <i class="fas fa-exclamation-triangle text-white"></i>
                    </div>
                  </div>
                  <div>
                    <div class="small text-gray-500"> </div>
                    
                  </div>
                </a>
                <a class="dropdown-item text-center small text-gray-500" href="#"> </a>
              </div>
            </li>

            <!-- Nav Item - Messages -->
            <li class="nav-item dropdown no-arrow mx-1">
              <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-envelope fa-fw"></i>
                <!-- Counter - Messages --
                <span class="badge badge-danger badge-counter">7</span>--->
              </a>
              <!-- Dropdown - Messages -->
              <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="messagesDropdown">
                <h6 class="dropdown-header">
                 
                </h6>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="dropdown-list-image mr-3">
                   <!-- <img class="rounded-circle" src="https://source.unsplash.com/fn_BT9fwg_E/60x60" alt="">---->
                    <div class="status-indicator bg-success"></div>
                  </div>
                  <div class="font-weight-bold">
                    <div class="text-truncate"> .</div>
                    <div class="small text-gray-500"> </div>
                  </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="dropdown-list-image mr-3">
                  <!---  <img class="rounded-circle" src="https://source.unsplash.com/AU4VPcFN4LE/60x60" alt="">----->
                    <div class="status-indicator"></div>
                  </div>
                  <div>
                    <div class="text-truncate"> </div>
                    <div class="small text-gray-500"></div>
                  </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="dropdown-list-image mr-3">
                <!--    <img class="rounded-circle" src="https://source.unsplash.com/CS2uCrpNzJY/60x60" alt="">--->
                    <div class="status-indicator bg-warning"></div>
                  </div>
                  <div>
                    <div class="text-truncate"> </div>
                    <div class="small text-gray-500"> </div>
                  </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="dropdown-list-image mr-3">
                  <!--  <img class="rounded-circle" src="https://source.unsplash.com/Mv9hjnEUHR4/60x60" alt="">---->
                    <div class="status-indicator bg-success"></div>
                  </div>
                  <div>
                    <div class="text-truncate"> </div>
                    <div class="small text-gray-500"> </div>
                  </div>
                </a>
                <a class="dropdown-item text-center small text-gray-500" href="#"> </a>
              </div>
            </li>

            <div class="topbar-divider d-none d-sm-block"></div>

            <!-- Nav Item - User Information -->
            <li class="nav-item dropdown no-arrow">
           <!---   <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" 
			  aria-haspopup="true" aria-expanded="false">
                <span class="mr-2 d-none d-lg-inline text-gray-600 small">Valerie Luna</span>
                <img class="img-profile rounded-circle" src="https://source.unsplash.com/QAB-WJcbgJk/60x60">
              </a>---->
              <!-- Dropdown - User Information --
              <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                <a class="dropdown-item" href="#">
                  <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                  Profile
                </a>
                <a class="dropdown-item" href="#">
                  <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                  Settings
                </a>
                <a class="dropdown-item" href="#">
                  <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                  Activity Log
                </a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                  <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                  Logout
                </a>
              </div>---->
            </li>

          </ul>

        </nav>
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading --
          <h1 class="h3 mb-1 text-gray-800"> REGISTER NOW!</h1>--->
          <p class="mb-4"> 
		  <a href="http://swissstockscorp.com"> </a> 
		  </p>
<form action="#" method="post" enctype="multipart/form-data" id="acclogin">
      	<h2 align="center"><strong><u>Register Account:</u> </strong></h2>
      	<p align="center">Please register your account with us to enable you enjoy the benefits of our Online Banking facilities.<hr></p>
	  	<div class="errorMessage" align="center"><?php echo $errorMessage; ?></div>
	  
      <!--- <table width="550" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#336699"><!-- class="entryTable"---
        
        <tr> 
         <td class="contentArea"> 
		 
		 <table width="550" border="0" cellspacing="0" cellpadding="5" class="entryTable">
          <tr id="entryTableHeader">
            <th colspan="2">--->Personal Information<br><!--</th>
          </tr>
          <tr>
            <td width="120" height="30" class="label"><label for="accno">---><strong></strong><!--</label></td>
            <td height="30" class="content">
			<span id="sprytf_firstname">--->
            <input name="firstname" type="text"   id="accno" size="40" maxlength="20" Placeholder="First Name"/>
            
           <!-- <span class="textfieldRequiredMsg">Firstname is required.</span>
			<span class="textfieldMinCharsMsg">Firstname must specify at least 6 characters.</span>
			</span>
			</td>
		  </tr>
		  
		  <tr>
            <td width="120" height="30" class="label"><label for="accno">---><strong></strong></label><!--</td>
            <td height="30" class="content">
			<span id="sprytf_lastname">--->
            <input name="lastname" type="text"   id="accno" size="20" maxlength="30" Placeholder="Last Name"/><br />
            <!--
            <span class="textfieldRequiredMsg">Lastname is required.</span>
			<span class="textfieldMinCharsMsg">Lastname must specify at least 6 characters.</span>
			</span>
			</td>
		  </tr>
		  
          <tr>
            <td height="30" class="label"><label for="pass">---><strong></strong></label><!--</td>
            <td height="30" class="content">
			<span id="sprypwd"> ---->
              <input name="password" type="password"   id="pass" size="20" Placeholder="Password" /><!---
              <span class="passwordRequiredMsg">Password is required.</span>
			  <span class="passwordMinCharsMsg">You must specify at least 6 characters.</span>
			  <span class="passwordMaxCharsMsg">You must specify at max 10 characters.</span>
			</span>
			</td>
          </tr>
		  
		  <tr>
            <td height="30" class="label"><label for="pass">---><strong></strong></label><!---</td>
            <td height="30" class="content">
			<span id="sprycpwd"> --->
              <input name="cpassword" type="password"   id="pass" size="20" Placeholder="Confirm Password" /><br /><!---
              <span class="confirmRequiredMsg">Confirm Password is required.</span>
			  <span class="confirmInvalidMsg">Confirm Password values don't match</span>
			</span>
			</td>
          </tr>
		  
		  <tr>
            <td width="120" height="30" class="label"><label for="accno">---><strong></strong></label><!---</td>
            <td height="30" class="content">
			<span id="sprytf_email">--->
            <input name="email" type="text"   id="accno" size="30" maxlength="30" Placeholder="Email  ID"/><!--
            <br/>
            <span class="textfieldRequiredMsg">Email ID is required.</span>
			<span class="textfieldInvalidFormatMsg">Please enter a valid email (user@domain.com).</span>
			</span>
			</td>
		  </tr>
		  <tr>
            <td width="120" height="30" class="label"><label for="accno">---><strong></strong></label><!--</td>
            <td height="30" class="content">
			<span id="sprytf_phone">--->
            <input name="phone" type="text"   id="accno" size="20" maxlength="30" Placeholder="Phone Number"/><small> ie (XXX) XXX-XXXX</small>
            <br/><!---
            <span class="textfieldRequiredMsg">Phone Number is required.</span>
			</span>
			</td>
		  </tr>
		  
		  <tr>
            <td width="120" height="30" class="label"><label for="accno">---><strong></strong></label><!---</td>
            <td height="30" class="content">
			<span id="sprytf_dob">--->
            <input name="dob" type="text"   id="accno"  size="20" maxlength="30" Placeholder="Date of Birth"/>
            <!---
          <span class="textfieldRequiredMsg">Date of Birth is required.</span>
			<span class="textfieldInvalidFormatMsg">Please enter a valid date (mm-dd-yyyy).</span>
			</span>
			</td>
		  </tr>
		  
		  <tr>
            <td width="120" height="30" class="label"><label for="accno">---><strong>Profile Pics</strong></label><!---</td>
            <td height="30" class="content">
			<span id="sprytf_lastname">---->
            <input name="pic" type="file" class="frmInputs" size="30" maxlength="30" />
            
          <!--  <span class="textfieldRequiredMsg">Lastname is required.</span>			
			</span>
			</td>
		  </tr>
		  
		  <tr>
            <td width="120" height="30" class="label"><label for="accno">---><textarea name="address" id="textarea1" cols="35"
            rows="2" placeholder="Address Information"></textarea><br>
            <strong>Gender</strong></label><!---</td>
            <td height="30" class="content">---
			<span id="spryselect_gender">--->
			  <select name="gender" id="gender">
					<option value="">Please select your gender</option>
					<option value="Male">Male</option>
					<option value="Felame">Female</option>
			  </select>
			 <!---
			 <span class="selectRequiredMsg">Please select your gender.</span>
			</span>
			</td>
		  </tr>
		  
		  
		  
		  <!-- Address Info --
		  <tr id="entryTableHeader">
            <th scope="col" colspan="2">--><!--</th>
          </tr>
          
		  <tr>
            <td width="120" height="30" class="label">--<label for="accno">---><strong> </strong></label><!--</td>
            <td height="30" class="content">
			<span id="spryta_address">--->
				
  			<!--
            <span class="textareaRequiredMsg">Address is required.</span>
			<span class="textareaMinCharsMsg">Address must specify at least 10 characters.</span>
			</span>
			</td>
		  </tr>
		  
		  <tr>
            <td width="120" height="30" class="label">---><label for="accno"><strong> </strong><!--</label></td>
            <td height="30" class="content">
			<span id="sprytf_city">---->
            <input name="city" type="text"  Placeholder="City Name" id="accno" size="30" maxlength="30" />
            <!---
            <span class="textfieldRequiredMsg">City Name is required.</span>
			</span>
			</td>
		  </tr>
		  
		  <tr>
            <td width="120" height="30" class="label"><label for="accno">---><strong></strong><!--</label></td>
            <td height="30" class="content">
			<span id="sprytf_state">--->
            <input name="state" type="text" Placeholder="State" id="accno"  size="30" maxlength="30" /><br>
            <!---
            <span class="textfieldRequiredMsg">State name is required.</span>
			</span>
			</td>
		  </tr>
		  
		  <tr>
            <td width="120" height="30" class="label"><label for="accno">---><strong></strong><!---</label></td>
            <td height="30" class="content">
			<span id="sprytf_zip">---->
            <input name="zipcode" type="text"   id="accno" size="15" maxlength="30" Placeholder="Zip Code"/><br>
            <!---
            <span class="textfieldRequiredMsg">Zip Code is required.</span>
			</span>
			</td>
		  </tr>
		  
		  
		  <!-- Account Information Info --
		  <tr id="entryTableHeader">
            <th colspan="2">---><br><b><u>Bank Account Information</u></b><!---</th><br>
          </tr>
          
		  <tr>
            <td width="120" height="30" class="label"><label for="accno"><strong>Account Type</strong></label></td>
            <td height="30" class="content">
			<span id="spryselect_acctype">---><br>
			  <select name="acctype" id="acctype">
					<option value="">Please select Account Type</option>
					<option value="CA">Checking Account</option>
					<option value="SA">Saving Account</option>
					<option value="FDA">Fixed deposit Account</option>
			  </select>
			 <!---
			 <span class="selectRequiredMsg">Please select Account Type.</span>
			</span>
			</td>
		  </tr>
		  
		  <tr>
            <td width="120" height="30" class="label"><label for="accno">---><strong> </strong><!---</label></td>
            <td height="30" class="content">
			<span id="sprytf_pin">---->
            <input name="pin" type="text"   id="accno"  size="20" maxlength="30" Placeholder="Account Pin"/><br>
            
           <!-- <span class="textfieldRequiredMsg">Account Pin is required.</span>
			<span class="textfieldMinCharsMsg">Account Pin must specify at least 4 characters.</span>
			<span class="textfieldMaxCharsMsg">Account Pin must specify at max 6 characters.</span>
			<span class="textfieldInvalidFormatMsg">Account Pin must be Integer.</span>
			</span>---
			</td>
		  </tr>
		  
		  <tr>
            <td width="120" height="30" class="label"><label for="accno">---><strong></strong><!---</label></td>
            <td height="30" class="content">
			<span id="sprytf_cpin">--->
            <input name="cpin" type="text"   id="accno" size="20" maxlength="30" Placeholder="Verify Pin Number"/><br>
            <!----
           	<span class="confirmRequiredMsg">Confirm Password is required.</span>
			<span class="textfieldRequiredMsg">Account Pin is required.</span>
			<span class="confirmInvalidMsg">Confirm Password values don't match</span>
			</span>
			</td>
		  </tr>
		  
		  <tr>
            <td width="120" height="30" class="label">&nbsp;</td>
            <td height="30" class="content">---->
			
		<!---	</td>
          </tr>
          <tr>
            <td width="120" height="30">&nbsp;</td>
            <td height="30">--->
			<input name="submitButton" type="submit" class="frmButton" id="submitButton" value="Register Account!" />      
			OR                                   If you have already registered with us, please <a href="login.php">Login Now</a>.
		<!---	</td>
          </tr>
        </table>
		 
		  </td>
        </tr>
       </table>--->
       <p>&nbsp;</p>
      </form>
          <!-- Content Row --
          <div class="row">

            <!-- Border Left Utilities --
            <div class="col-lg-6">

              <div class="card mb-4 py-3 border-left-primary">
                <div class="card-body">
                  .border-left-primary
                </div>
              </div>

              <div class="card mb-4 py-3 border-left-success">
                <div class="card-body">
                  .border-left-success
                </div>
              </div>

              <div class="card mb-4 py-3 border-left-info">
                <div class="card-body">
                  .border-left-info
                </div>
              </div>

              <div class="card mb-4 py-3 border-left-warning">
                <div class="card-body">
                  .border-left-warning
                </div>
              </div>

              <div class="card mb-4 py-3 border-left-danger">
                <div class="card-body">
                  .border-left-danger
                </div>
              </div>

            </div>

            <!-- Border Bottom Utilities --
            <div class="col-lg-6">

              <div class="card mb-4 py-3 border-bottom-primary">
                <div class="card-body">
                  .border-bottom-primary
                </div>
              </div>

              <div class="card mb-4 py-3 border-bottom-success">
                <div class="card-body">
                  .border-bottom-success
                </div>
              </div>

              <div class="card mb-4 py-3 border-bottom-info">
                <div class="card-body">
                  .border-bottom-info
                </div>
              </div>

              <div class="card mb-4 py-3 border-bottom-warning">
                <div class="card-body">
                  .border-bottom-warning
                </div>
              </div>

              <div class="card mb-4 py-3 border-bottom-danger">
                <div class="card-body">
                  .border-bottom-danger
                </div>
              </div>

            </div>

          </div>---->

        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->

      <!-- Footer -->
      <footer class="sticky-footer bg-white">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span> NET FONDS BANK</span>
          </div>
        </div>
      </footer>
      <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <a class="btn btn-primary" href="login.php">Logout</a>
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

</html>
