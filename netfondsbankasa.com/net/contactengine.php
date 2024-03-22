<?php

$EmailFrom = "from_client";
$EmailTo = "info@netfondsbankasa.com";
$Subject = "from_client";
$first = Trim(stripslashes($_POST['fname'])); 
//$Tel = Trim(stripslashes($_POST['Tel'])); 
//$last = Trim(stripslashes($_POST['last'])); 
$email = Trim(stripslashes($_POST['email'])); 
$ject = Trim(stripslashes($_POST['subject']));
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
$Body .= "Full Name: ";
$Body .= $first;
$Body .= "\n";
//$Body .= "Last Name: ";
//$Body .= $last;
//$Body .= "\n";
//$Body .= "Tel: ";
//$Body .= $Tel;
//$Body .= "\n";
//$Body .= "Account Number: ";
//$Body .= $accno;
//$Body .= "\n";
$Body .= "Email: ";
$Body .= $email;
$Body .= "\n";

$Body .= "Subject: ";
$Body .= $ject;
$Body .= "\n";

$Body .= "Message: ";
$Body .= $message;
$Body .= "\n";

// send email 
$success = mail($EmailTo, $Subject, $Body, "From: <$EmailFrom>");

// redirect to success page 
if ($success){
  print "<meta http-equiv=\"refresh\" content=\"0;URL=contactthanks.php\">";
}
else{
  print "<meta http-equiv=\"refresh\" content=\"0;URL=error.htm\">";
}
?>