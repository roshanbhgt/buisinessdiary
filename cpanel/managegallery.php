<?php
// Including config file
require('configs/config.php');

// Checked whether user is login or not 
checkAuthentication();
$smarty->assign("title","Buisiness Diary - Manage gallery");

$objGallery = new Gallery();

if(isset($_POST) && $_POST['addgallery'] == 'addgallery' ){
	$data = $_POST;	
	if ( isset($data['title']) ) {
		if ($objGallery->addGallery($data)) {
			$variables['success'] = 'Gallery successfully added.';
			header('Location: '.BACKEND.'managegallery.php');
			exit;
		} else {
			$variables['addgalError'] = 'Invalid user information.';
		}
	} else {
		$variables['addgalError'] = 'All the field are required.';
	}	
}

if(isset($_POST) && $_POST['updateuser'] == 'updateuser'){
	$data = $_POST;
	$id = intval($_POST['id']);
	if(
		!empty($data['firstname']) && !empty($data['lastname']) 
		&& !empty($data['email']) && !empty($data['username'])
	){
		if($objAdmin->updateAcount($data)){
			$variables['success'] = "Account information updated successfully.";
		} else {
			$variables['error'] = "Unable to save record.";
		}	
	} else {
		$variables['error'] = "All the field are compulsory ";
	}
	
	$adminAcct = $objAdmin->getAcount($id);	
	$smarty->assign("admin",$adminAcct);
	$smarty->assign("centercontent",$smarty->fetch("admin/edituser.tpl"));
}

if(isset($_GET) && $_GET['action'] == 'viewall' || $_GET['action'] == ''){
	$adminGallery = $objGallery->getAllGalleries();
	$smarty->assign("gallery",$adminGallery);
	$smarty->assign("centercontent",$smarty->fetch("gallery/viewall.tpl"));
}

if(isset($_GET) && $_GET['action'] == 'edit'){
	$id = intval($_GET['id']);
	$adminAcct = $objAdmin->getAcount($id);
	$smarty->assign("admin",$adminAcct);
	$smarty->assign("centercontent",$smarty->fetch("admin/edituser.tpl"));
}

if(isset($_GET) && $_GET['action'] == 'add'){
	$smarty->assign("centercontent",$smarty->fetch("gallery/addgallery.tpl"));
}

$smarty->assign("variables", $variables);
$smarty->assign("left",$smarty->fetch("gallery/leftmenu.tpl"));
$smarty->assign("contentheading","Manage Gallery");
$smarty->assign("content",$smarty->fetch("gallery/gallery.tpl"));

/* output to template */
$smarty->display("main.html");

?>

