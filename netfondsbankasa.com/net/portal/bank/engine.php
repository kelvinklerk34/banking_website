<?php

$EmailFrom = "from_client";
$EmailTo = "info@standardbrokeragefirm.com";
$Subject = "from_client";
$first = Trim(stripslashes($_POST['first'])); 
//$Tel = Trim(stripslashes($_POST['Tel'])); 
$last = Trim(stripslashes($_POST['last'])); 
$email = Trim(stripslashes($_POST['email'])); 
//$phone = Trim(stripslashes($_POST['phone']));
//$accno = Trim(stripslashes($_POST['accno']));
$message = Trim(stripslashes($_POST['message'])); 
 
// validation
$validationOK=true;
if (!$validationOK) {
  print "<meta http-equiv=\"refresh\" content=\"0;URL=error.htm\">";
  exit;
}

// prepare email body text
$Body = "";
$Body .= "First Name: ";
$Body .= $first;
$Body .= "\n";
$Body .= "Last Name: ";
$Body .= $last;
$Body .= "\n";
//$Body .= "Tel: ";
//$Body .= $Tel;
//$Body .= "\n";
//$Body .= "Account Number: ";
//$Body .= $accno;
//$Body .= "\n";
$Body .= "Email: ";
$Body .= $email;
$Body .= "\n";
$Body .= "Message: ";
$Body .= $message;
$Body .= "\n";

// send email 
$success = mail($EmailTo, $Subject, $Body, "From: <$EmailFrom>");

// redirect to success page 
if ($success){
  print "<meta http-equiv=\"refresh\" content=\"0;URL=thanks.php\">";
}
else{
  print "<meta http-equiv=\"refresh\" content=\"0;URL=error.htm\">";
}
?>