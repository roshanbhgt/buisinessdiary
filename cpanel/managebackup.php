<?php
// Including config file
require('configs/config.php');

// Checked whether user is login or not 
checkAuthentication();
$smarty->assign("title","Buisiness Diary - Manage Db Backup");

$objSystem = new System();

$objSystem->backuupDatabase();

$smarty->assign("variables", $variables);
$smarty->assign("left",$smarty->fetch("pages/leftmenu.tpl"));
$smarty->assign("contentheading","Manage Pages");
$smarty->assign("content",$smarty->fetch("pages/pages.tpl"));

/* output to template */
$smarty->display("main.html");

?>

