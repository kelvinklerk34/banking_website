<?php
require_once './library/config.php';
require_once './library/functions.php';

checkUser();

$content = 'view/summary.php';
$pageTitle = 'EMPIRE BANK';
$script = array();

require_once 'include/template.php';
?>