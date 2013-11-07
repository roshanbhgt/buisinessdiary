<?php
// Including config file
require('configs/config.php');

// Checked whether user is login or not 
checkAuthentication();
$smarty->assign("title","Buisiness Diary - Manage Db Backup");

$objSystem = new System();

if($objSystem->backuupDatabase()){
	$variables['success'] = "Backup taken successfully.";
}

$dbbackup = $objSystem->getBackupList();
$smarty->assign("variables", $variables);
$smarty->assign("dbbackup", $dbbackup);
$smarty->assign("left",$smarty->fetch("system/leftmenu.tpl"));
$smarty->assign("centercontent",$smarty->fetch("system/dbbackup.tpl"));
$smarty->assign("contentheading","Manage DB Backup");
$smarty->assign("content",$smarty->fetch("system/system.tpl"));

/* output to template */
$smarty->display("main.html");

?>

