<?php
// Including config file
require('configs/config.php');

// Checked whether user is login or not 
checkAuthentication();

$smarty->assign("title","Buisiness Diary - Manage Buisiness");

$objBuisiness = new Buisiness();

if($_GET['action'] == 'viewbuisiness' || $_GET['action'] == ''){
	$buisinessLists = $objBuisiness->getBuisinessList();
	$smarty->assign("buisinesslists",$buisinessLists);
	$smarty->assign("centercontent",$smarty->fetch("blist/viewall.tpl"));
}

$smarty->assign("variables", $variables);
$smarty->assign("left",$smarty->fetch("blist/leftmenu.tpl"));
$smarty->assign("contentheading","Manage Buisiness");
$smarty->assign("content",$smarty->fetch("blist/blist.tpl"));

/* output to template */
$smarty->display("main.html");

?>

