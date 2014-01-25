<?php
// Including config file
require('configs/config.php');

// Checked whether user is login or not 
checkAuthentication();
$smarty->assign("title","Buisiness Diary - Manage users");

$objUser = new User();

if($_GET['action'] == 'viewall' || $_GET['action'] == ''){
	$pageId = intval($_GET['page']);
	$result = $objUser->getUsers($pageId);
	$users = $result['users'];
	$pageCount = $result['pagecount'];
	$smarty->assign("pages", $pageCount); 
	$smarty->assign("users",$users);
	$smarty->assign("centercontent",$smarty->fetch("user/viewusers.tpl"));
}



$smarty->assign("variables", $variables);
$smarty->assign("left",$smarty->fetch("user/leftmenu.tpl"));
$smarty->assign("contentheading","Manage users");
$smarty->assign("content",$smarty->fetch("user/user.tpl"));

/* output to template */
$smarty->display("main.html");

?>

