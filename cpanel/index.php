<?php
// Including config file
require('configs/config.php');

// Checked whether user is login or not 
checkAuthentication();

$smarty->assign("title","Buisiness Diary - Welcome to the admin");

$smarty->assign("contentheading", "Dashboard");
$smarty->assign("content",$smarty->fetch("dashboard.tpl"));

/* output to template */
$smarty->display("main.html");



?>

