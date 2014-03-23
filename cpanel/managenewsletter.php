<?php
// Including config file
require('configs/config.php');

// Checked whether user is login or not
checkAuthentication();
$smarty->assign("title","Buisiness Diary - Manage newsletter");

$objEnews = new Enewsletter();

if(isset($_POST['addnewsemail'])){
	$data = $_POST;
	if(validateEmail($data['email'])){
		if(!$objEnews->chkDuplSub($data['email'])){
			if ($objEnews->addNewsletterEmail($data)) {
				$variables['success'] = 'Email newsletter subscription add successfully.';
			} else {
				$variables['error'] = 'Unable to subscribe to email newsletter.';
			}
		} else {
			$variables['error'] = 'You had already subscribed to newsletter.';
		}
	} else {
		$objEnews->updateNewsletterByEmail($data['email']);
		$variables['error'] = 'Please enter valid email address.';
	}

}

if(isset($_POST['updatenewsemail'])){
	$data = $_POST;
	if ($objEnews->updateNewsletterEmail($data)) {
		$variables['success'] = 'Newsletter subscription updated successfully.';
	} else {
		$variables['error'] = 'Unable to subscribe to email newsletter.';
	}
}

if(isset($_GET) && $_GET['action'] == 'viewall' || $_GET['action'] == ''){
    $pageId = intval($_GET['page']);
    $result = $objEnews->getNewsletterEmail($pageId);
    $adminNewsEmails = $result['newslemail'];
    $pageCount = $result['pagecount'];
    $smarty->assign("pages", $pageCount);
    $smarty->assign("newsletteremails",$adminNewsEmails);
    $smarty->assign("centercontent",$smarty->fetch("newsletter/viewall.tpl"));
}

if(isset($_GET) && $_GET['action'] == 'add' || $_GET['action'] == ''){
	$smarty->assign("centercontent",$smarty->fetch("newsletter/add.tpl"));
}

if(isset($_GET) && $_GET['action'] == 'edit' || $_GET['action'] == ''){
	$id = intval($_GET['id']);
	$newsemail = $objEnews->getNewsletterEmailById($id);
	$smarty->assign("newsemail",$newsemail);
	$smarty->assign("centercontent",$smarty->fetch("newsletter/edit.tpl"));
}



$smarty->assign("variables", $variables);
$smarty->assign("left",$smarty->fetch("newsletter/leftmenu.tpl"));
$smarty->assign("contentheading","Manage Newsletter");
$smarty->assign("content",$smarty->fetch("newsletter/newsletter.tpl"));

/* output to template */
$smarty->display("main.html");

?>