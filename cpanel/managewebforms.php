<?php
// Including config file
require('configs/config.php');

// Checked whether user is login or not 
checkAuthentication();
$smarty->assign("title","Buisiness Diary - Webforms");

$objWebforms = new Webforms();

if(isset($_GET) && $_GET['action'] == 'clist'){
	$pageId = intval($_GET['page']);
	$result = $objWebforms->getContactListData($pageId);
	$clistData = $result['clist'];
	$pageCount = $result['pagecount'];
	$smarty->assign("clist", $clistData);
	$smarty->assign("pages", $pageCount);
	$smarty->assign("contentheading","Webforms contact us");
	$smarty->assign("centercontent",$smarty->fetch("webforms/viewclist.tpl"));
}

if(isset($_GET) && $_GET['action'] == 'flist'){
	$pageId = intval($_GET['page']);
	$result = $objWebforms->getFeedbackListData($pageId);
	$flistData = $result['flist'];
	$pageCount = $result['pagecount'];
	$smarty->assign("flist", $flistData);
	$smarty->assign("pages", $pageCount);
	$smarty->assign("contentheading","Webforms feedback");
	$smarty->assign("centercontent",$smarty->fetch("webforms/viewflist.tpl"));
}

if(isset($_GET) && $_GET['action'] == 'rlist'){
    $pageId = intval($_GET['page']);
    $result = $objWebforms->getRequestListData($pageId);
    $rlistData = $result['rlist'];
    $pageCount = $result['pagecount'];
    $smarty->assign("rlist", $rlistData);
    $smarty->assign("pages", $pageCount);
    $smarty->assign("contentheading","Webforms Request Listing");
    $smarty->assign("centercontent",$smarty->fetch("webforms/viewrlist.tpl"));
}


if(isset($_GET) && $_GET['action'] == 'cinfo'){
	$id = intval($_GET['id']);
	$cData = $objWebforms->getContactData($id);
	$smarty->assign("cinfo",$cData);
	$smarty->assign("contentheading","Webforms contact us");
	$smarty->assign("centercontent",$smarty->fetch("webforms/cdata.tpl"));
}

$smarty->assign("variables", $variables);
$smarty->assign("left",$smarty->fetch("webforms/leftmenu.tpl"));
$smarty->assign("content",$smarty->fetch("webforms/webforms.tpl"));

/* output to template */
$smarty->display("main.html");

?>

