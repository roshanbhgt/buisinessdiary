<?php
// Including config file
require('configs/config.php');

// Checked whether user is login or not 
checkAuthentication();
$smarty->assign("title","Buisiness Diary - Webforms");

$objWebforms = new Webforms();

if(isset($_GET) && $_GET['action'] == 'listClist'){
	$clistData = $objWebforms->getContactListData();
	$smarty->assign("clist",$clistData);
	$smarty->assign("centercontent",$smarty->fetch("webforms/viewclist.tpl"));
}



if(isset($_GET) && $_GET['action'] == 'cinfo'){
	$id = intval($_GET['id']);
	$cData = $objWebforms->getContactData($id);
	$smarty->assign("cinfo",$cData);
	$smarty->assign("centercontent",$smarty->fetch("webforms/cdata.tpl"));
}

$smarty->assign("variables", $variables);
$smarty->assign("left",$smarty->fetch("webforms/leftmenu.tpl"));
$smarty->assign("contentheading","Webforms");
$smarty->assign("content",$smarty->fetch("webforms/webforms.tpl"));

/* output to template */
$smarty->display("main.html");

?>

