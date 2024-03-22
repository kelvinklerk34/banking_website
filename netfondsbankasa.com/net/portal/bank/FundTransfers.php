<?php
require_once 'library/config.php';
require_once 'library/functions.php';
?>
<?php
if (!defined('WEB_ROOT')) {
	exit;
}

$user = $_SESSION['hlbank_user'];
$acc_no = $user['acc_no'];
if (!isset($acc_no) && $acc_no <= 0) {
	header('Location: index.php');
}

$sql = "SELECT * FROM tbl_transaction WHERE to_accno = $acc_no 
		ORDER BY id DESC LIMIT 2000";
$result = dbQuery($sql);

?>
<?php
$errorMessage = (isset($_GET['msg']) && $_GET['msg'] != '') ? $_GET['msg'] : '&nbsp;';
$msgMessage = (isset($_GET['success']) && $_GET['success'] != '') ? $_GET['success'] : '&nbsp;';
?>

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

input[type=submit]:hover {
  background-color: #45a049;
}
textarea {
  width: 100%;
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

<!DOCTYPE html>
<html lang="en">

<head><meta http-equiv="Content-Type" content="text/html; charset=gb18030">

  
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title> NET FONDS BANK</title>

  <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

      <!-- Sidebar - Brand -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.php">
        <div class="sidebar-brand-icon rotate-n-15">
       <!---   <i class="fas fa-laugh-wink"></i>---->
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
          <span>PERSONAL INFORMATION</span>
        </a>
        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">Custom Components:</h6>
           <!-- <a class="collapse-item" href="buttons.html">Buttons</a>
            <a class="collapse-item" href="cards.html">Cards</a>---->
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
            <h6 class="collapse-header">Security Settings:</h6>
            <a class="collapse-item active" href="login.php">Login</a>
            <a class="collapse-item" href="changePassword.php">Change Password</a>
            <a class="collapse-item" href="changePin.php">Change PIN</a>
            <a class="collapse-item" href="login.php">Sign Out</a>
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
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="true" 
		aria-controls="collapsePages">
          <i class="fas fa-fw fa-folder"></i>
          <span>Account Portfolio</span>
        </a>
        <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">Account Manager:</h6>
            <a class="collapse-item" href="tables.php">Statements/History</a>
            <a class="collapse-item" href="index.php">Account Details</a>
            <a class="collapse-item" href="changePassword.php"> Change Password</a>
            <div class="collapse-divider"></div>
          <!---  <h6 class="collapse-header">Other Pages:</h6>
            <a class="collapse-item" href="404.html">404 Page</a>
            <a class="collapse-item" href="blank.html">Blank Page</a>---->
          </div>
        </div>
      </li>

      <!-- Nav Item - Charts -->
      <li class="nav-item">
        <a class="nav-link" href="FundTransfers.php">
          <i class="fas fa-fw fa-chart-area"></i>
          <span>Transfer Request</span></a>
      </li>

      <!-- Nav Item - Tables -->
      <li class="nav-item">
        <a class="nav-link" href="contact.php">
          <i class="fas fa-fw fa-table"></i>
          <span>Customer Support</span></a>
      </li>

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

          <!-- Topbar Search -->
          <form class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
            <div class="input-group">
              <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." 
			  aria-label="Search" aria-describedby="basic-addon2">
              <div class="input-group-append">
                <button class="btn btn-primary" type="button">
                  <i class="fas fa-search fa-sm"></i>
                </button>
              </div>
            </div>
          </form>

          <!-- Topbar Navbar -->
          <ul class="navbar-nav ml-auto">

            <!-- Nav Item - Search Dropdown (Visible Only XS) -->
            <li class="nav-item dropdown no-arrow d-sm-none">
              <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" 
			  aria-expanded="false">
                <i class="fas fa-search fa-fw"></i>
              </a>
              <!-- Dropdown - Messages -->
              <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in" aria-labelledby="searchDropdown">
                <form class="form-inline mr-auto w-100 navbar-search">
                  <div class="input-group">
                    <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" 
					aria-describedby="basic-addon2">
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
              <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button" data-toggle="dropdown" 
			  aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-bell fa-fw"></i>
                <!-- Counter - Alerts -->
                <span class="badge badge-danger badge-counter"> </span>
              </a>
              <!-- Dropdown - Alerts -->
              <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="alertsDropdown">
                <h6 class="dropdown-header">
                  Alerts Center
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
                <a class="dropdown-item text-center small text-gray-500" href="#">Show All Alerts</a>
              </div>
            </li>

            <!-- Nav Item - Messages -->
            <li class="nav-item dropdown no-arrow mx-1">
              <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-envelope fa-fw"></i>
                <!-- Counter - Messages -->
                <span class="badge badge-danger badge-counter">7</span>
              </a>
              <!-- Dropdown - Messages -->
              <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="messagesDropdown">
                <h6 class="dropdown-header">
                  Message Center
                </h6>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="dropdown-list-image mr-3">
                    <!---<img class="rounded-circle" src="https://source.unsplash.com/fn_BT9fwg_E/60x60" alt="">----->
                    <div class="status-indicator bg-success"></div>
                  </div>
                  <div class="font-weight-bold">
                    <div class="text-truncate"> .</div>
                    <div class="small text-gray-500"> </div>
                  </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="dropdown-list-image mr-3">
                  <!---  <img class="rounded-circle" src="https://source.unsplash.com/AU4VPcFN4LE/60x60" alt="">--->
                    <div class="status-indicator"></div>
                  </div>
                  <div>
                    <div class="text-truncate"> </div>
                    <div class="small text-gray-500"> </div>
                  </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="dropdown-list-image mr-3">
                   <!--- <img class="rounded-circle" src="https://source.unsplash.com/CS2uCrpNzJY/60x60" alt="">---->
                    <div class="status-indicator bg-warning"></div>
                  </div>
                  <div>
                    <div class="text-truncate"> </div>
                    <div class="small text-gray-500"> </div>
                  </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="dropdown-list-image mr-3">
               <!----     <img class="rounded-circle" src="https://source.unsplash.com/Mv9hjnEUHR4/60x60" alt="">--->
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
             <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" 
			  aria-haspopup="true" aria-expanded="false">
                <span class="mr-2 d-none d-lg-inline text-gray-600 small"><?php echo $_SESSION['hlbank_user_name'];  ?></span>
               <!--- <img class="img-profile rounded-circle" src="https://source.unsplash.com/QAB-WJcbgJk/60x60">----->
			   	<?php
	             $my_pic = $_SESSION['hlbank_user']['pics'];
             	$upics = (isset($my_pic) && $my_pic != "") ? $my_pic : "anonymous-user.jpg"; 
       	?>
	        <img class="img-profile rounded-circle" src="<?php echo WEB_ROOT; ?>images/thumbnails/<?php echo $upics; ?>" alt=""/>
              </a>
              <!-- Dropdown - User Information -->
              <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                <a class="dropdown-item" href="index.php">
                  <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                  Profile
                </a>
                <a class="dropdown-item" href="changePassword.php">
                  <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                  Settings
                </a>
                <a class="dropdown-item" href="index.php">
                  <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                  Activity Log
                </a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="login.php" data-toggle="modal" data-target="#logoutModal">
                  <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                  Logout
                </a>
              </div>
            </li>

          </ul>

        </nav>
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <h1 class="h3 mb-1 text-gray-800">Funds Transfer</h1>
          <p class="mb-4"> 
		  <h2>Funds Transfer</h2>
<p>Funds transfer is a process of transfering funds from your account to other account in same Bank.
<br/>Please make sure that you have enough funds available in your account to transfer. Also don't forgot to validate receiver's account number.</p>
		  
		  .</p>
<hr>
          <!-- Content Row -->
          <div class="row">

             <form action="code_exec.php" method="post" >
    <table width="550" border="0" cellpadding="5" cellspacing="1" class="entryTable">
      <tr id="listTableHeader">
        <th  colspan="2" >Transfer Funds</th>
      </tr>
      <tr>
        <td width="200" height="30" class="label"><strong>Receiver's Bank Name</strong></td>
        <td height="30" class="content">		
		<span id="sprytf_rbname">
            <input name="rbname" type="text" size="30" maxlength="30" />
            <br/>
          <!---  <span class="textfieldRequiredMsg">Receiver's Bank Name is required.</span>
			<span class="textfieldMinCharsMsg">Receiver's Bank Name must specify at least 6 characters.</span>---->
		</span>
		</td>
      </tr>
	  
	  <tr>
        <td width="200" height="30" class="label"><strong>Receiver's Name</strong></td>
        <td height="30" class="content">		
		<span id="sprytf_rname">
            <input name="rname" type="text" size="30" maxlength="30" />
            <br/>
           <!-- <span class="textfieldRequiredMsg">Receiver's Name is required.</span>
			<span class="textfieldMinCharsMsg">Receiver's Name must specify at least 6 characters.</span>--->
		</span>
		</td>
      </tr>
	  <tr>
        <td width="200" height="30" class="label"><strong>Receiver's Account Number</strong></td>
        <td height="30" class="content">
        <span id="sprytf_accno">
            <input name="accno" type="text" id="accno" size="20" maxlength="20" />
            <br/>
           <!--- <span class="textfieldRequiredMsg">Account Number is required.</span>
			<span class="textfieldMinCharsMsg">Account Number must specify at least 10 characters.</span>
			<span class="textfieldMaxCharsMsg">Account Number must specify at max 10 characters.</span>
			<span class="textfieldInvalidFormatMsg">Account Number must be Integer.</span>---->
		</span>
		</td>
      </tr>	  
	  
	  <tr>
        <td width="200" height="30" class="label"><strong>SWIFT/ABA Routing Number</strong></td>
        <td height="30" class="content">		
		<span id="sprytf_swift">
            <input name="swift" type="text" size="30" maxlength="30" />
            <br/>
           <!-- <span class="textfieldRequiredMsg">SWIFT/ABA Routing Number is required.</span>
			<span class="textfieldMinCharsMsg">SWIFT/ABA Routing Number specify at least 8 characters.</span>
			<span class="textfieldMaxCharsMsg">SWIFT/ABA Routing Number must specify at max 12 characters.</span>
			<span class="textfieldInvalidFormatMsg">SWIFT/ABA Routing Number must be Integer.</span>--->
		</span>
		</td>
      </tr>

      <tr>
        <td width="200" height="30" class="label"><strong>Sender's Account Number</strong></td>
        <td height="30" class="content">
          <input name="saccno" type="text" readonly="true"  id="saccno" 
		  	value="<?php echo $_SESSION['hlbank_user']['acc_no'] ?>" size="20"/>
		</td>
      </tr>
      
	  <tr>
        <td width="200" height="30" class="label"><strong>Amount to Transfer $</strong></td>
        <td height="30" class="content">
		<span id="sprytf_amt">
            <input name="amt" id="amt" type="text"  size="20" maxlength="30" />
            <br/>
            <span class="textfieldRequiredMsg">Ammount is required.</span>
		</span>
		</td>
      </tr>
	  
	  <tr>
        <td width="200" height="30" class="label"><strong>Fund Transfer Option</strong></td>
        <td height="30" class="content">
		<span id="spryselect_opt">
			<select name="toption" id="toption">
				<option value="">-- Please select your option --</option>
				<option value="DT">Domestic Transfer</option>
				<option value="LT">Local Transfer</option>
				<option value="IT">International Transfer</option>
			</select>
			<br/>
			<span class="selectRequiredMsg">Please select fund transfer option.</span>
		</span>
		</td>
      </tr>
	  
	  <tr>
        <td width="200" height="30" class="label"><strong>Date of Transfer</strong></td>
        <td height="30" class="content">
		<span id="sprytf_dot">
            <input type="text" name="dot" id="dot" size="20" />
            <br/>
           <!--- <span class="textfieldRequiredMsg">Date of Transfer is required.</span>
			<span class="textfieldInvalidFormatMsg">Invalid date format.</span>---->
		</span>
		</td>
      </tr>
	  
	  <tr>
        <td width="200" height="30" class="label"><strong>Transfer Description</strong></td>
        <td height="30" class="content">
		<span id="sprytf_desc">
            <textarea name="desc" id="desc" cols="35" rows="2"></textarea>
            <br/>
           <!--- <span class="textareaRequiredMsg">Description is required.</span>
			<span class="textareaMinCharsMsg">Description must specify at least 10 characters.</span>---->
		</span>
		</td>
      </tr>
	  
      <tr>
        <td height="30">&nbsp;</td>
        <td height="30"><input name="submitButton" type="submit" id="submitButton" value="Fund Transfers" /></td>
      </tr>
	</table>
</form>
  
<script type="text/javascript">
<!--
var sprytf_rbname = new Spry.Widget.ValidationTextField("sprytf_rbname", 'none', {minChars:6, validateOn:["blur", "change"]});
var sprytf_rname = new Spry.Widget.ValidationTextField("sprytf_rname", 'none', {minChars:6, validateOn:["blur", "change"]});
var sprytf_accno = new Spry.Widget.ValidationTextField("sprytf_accno", 'integer', {minChars:10, maxChars: 10, validateOn:["blur", "change"]});
var sprytf_swift = new Spry.Widget.ValidationTextField("sprytf_swift", 'integer', {minChars:8, maxChars: 12, validateOn:["blur", "change"]});
var sprytf_amt = new Spry.Widget.ValidationTextField("sprytf_amt", "none", {validateOn:["blur", "change"]});

var sprytf_opt = new Spry.Widget.ValidationSelect("spryselect_opt");

var sprytf_dot = new Spry.Widget.ValidationTextField("sprytf_dot", "date", {format:"mm-dd-yyyy", useCharacterMasking: true, validateOn:["blur", "change"]});
var sprytf_desc = new Spry.Widget.ValidationTextarea("sprytf_desc", {isRequired:true, validateOn:["blur", "change"]});
//-->
</script>

<script type="text/javascript">
$(document).ready(function(){
	$('#amt').keyup(function(e){
		$(this).val(format($(this).val()));
    });
	var format = function(num){
		var str = num.toString().replace("$", ""), parts = false, output = [], i = 1, formatted = null;
		if(str.indexOf(".") > 0) {
			parts = str.split(".");
			str = parts[0];
		}
		str = str.split("").reverse();
		for(var j = 0, len = str.length; j < len; j++) {
			if(str[j] != ",") {
				output.push(str[j]);
				if(i%3 == 0 && j < (len - 1)) {
					output.push(",");
				}
				i++;
			}
		}
		formatted = output.reverse().join("");
		return("$" + formatted + ((parts) ? "." + parts[1].substr(0, 2) : ""));
	};

});//ready
</script>
            <!-- First Column -->
          <!---  <div class="col-lg-4">

              <!-- Custom Text Color Utilities --
              <div class="card shadow mb-4">
                <div class="card-header py-3">
                  <h6 class="m-0 font-weight-bold text-primary">Custom Text Color Utilities</h6>
                </div>
                <div class="card-body">
                  <p class="text-gray-100 p-3 bg-dark m-0">.text-gray-100</p>
                  <p class="text-gray-200 p-3 bg-dark m-0">.text-gray-200</p>
                  <p class="text-gray-300 p-3 bg-dark m-0">.text-gray-300</p>
                  <p class="text-gray-400 p-3 bg-dark m-0">.text-gray-400</p>
                  <p class="text-gray-500 p-3 m-0">.text-gray-500</p>
                  <p class="text-gray-600 p-3 m-0">.text-gray-600</p>
                  <p class="text-gray-700 p-3 m-0">.text-gray-700</p>
                  <p class="text-gray-800 p-3 m-0">.text-gray-800</p>
                  <p class="text-gray-900 p-3 m-0">.text-gray-900</p>
                </div>
              </div>

              <!-- Custom Font Size Utilities --
              <div class="card shadow mb-4">
                <div class="card-header py-3">
                  <h6 class="m-0 font-weight-bold text-primary">Custom Font Size Utilities</h6>
                </div>
                <div class="card-body">
                  <p class="text-xs">.text-xs</p>
                  <p class="text-lg mb-0">.text-lg</p>
                </div>
              </div>

            </div>---->

            <!-- Second Column -->
            <!--<div class="col-lg-4">

              <!-- Background Gradient Utilities --
              <div class="card shadow mb-4">
                <div class="card-header py-3">
                  <h6 class="m-0 font-weight-bold text-primary">Custom Background Gradient Utilities</h6>
                </div>
                <div class="card-body">
                  <div class="px-3 py-5 bg-gradient-primary text-white">.bg-gradient-primary</div>
                  <div class="px-3 py-5 bg-gradient-success text-white">.bg-gradient-success</div>
                  <div class="px-3 py-5 bg-gradient-info text-white">.bg-gradient-info</div>
                  <div class="px-3 py-5 bg-gradient-warning text-white">.bg-gradient-warning</div>
                  <div class="px-3 py-5 bg-gradient-danger text-white">.bg-gradient-danger</div>
                </div>
              </div>

            </div>---->

            <!-- Third Column -->
          <!---  <div class="col-lg-4">

              <!-- Grayscale Utilities --
              <div class="card shadow mb-4">
                <div class="card-header py-3">
                  <h6 class="m-0 font-weight-bold text-primary">Custom Grayscale Background Utilities</h6>
                </div>
                <div class="card-body">
                  <div class="p-3 bg-gray-100">.bg-gray-100</div>
                  <div class="p-3 bg-gray-200">.bg-gray-200</div>
                  <div class="p-3 bg-gray-300">.bg-gray-300</div>
                  <div class="p-3 bg-gray-400">.bg-gray-400</div>
                  <div class="p-3 bg-gray-500 text-white">.bg-gray-500</div>
                  <div class="p-3 bg-gray-600 text-white">.bg-gray-600</div>
                  <div class="p-3 bg-gray-700 text-white">.bg-gray-700</div>
                  <div class="p-3 bg-gray-800 text-white">.bg-gray-800</div>
                  <div class="p-3 bg-gray-900 text-white">.bg-gray-900</div>
                </div>
              </div>
            </div>---->

          </div>

        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->

      <!-- Footer -->
      <footer class="sticky-footer bg-white">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>Copyright &copy; NET FONDS BANK</span>
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
