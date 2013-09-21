<?php
// Including config file
require('configs/config.php');

// Checked whether user is login or not 
checkAuthentication();
$smarty->assign("title","Buisiness Diary - Manage categories");

$objCat = new Categries();

if(isset($_POST) && $_POST['addparentcat'] == 'addparentcat' ){
	$data = $_POST;	
	if ( isset($data['title'])	) {
		if ($objCat->addCategory($data)) {
			$variables['success'] = 'Category added successfully.';
			header('Location: '.BACKEND.'managecat.php');
			exit;
		} else {
			$variables['addcaterror'] = 'Invalid category information.';
		}
	} else {
		$variables['addcaterror'] = 'All the field are required.';
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
	$smarty->assign("centercontent",$smarty->fetch("category/editcat.tpl"));
}

if(isset($_GET) && $_GET['action'] == 'viewparent' || $_GET['action'] == '' || $_GET['action'] == 'viewsub'){
	if ($_GET['action'] == 'viewsub') {
		$catAll = $objCat->getAllSubcat();
		$smarty->assign("view",'viewsub');
	} else {
		$catAll = $objCat->getAllParentcat();
		$smarty->assign("view",'viewparent');
	}
	$smarty->assign("catall",$catAll);
	$smarty->assign("centercontent",$smarty->fetch("category/viewall.tpl"));
}

if(isset($_GET) && $_GET['action'] == 'edit'){
	$id = intval($_GET['id']);
	$adminAcct = $objAdmin->getAcount($id);
	$smarty->assign("admin",$adminAcct);
	$smarty->assign("centercontent",$smarty->fetch("category/editcat.tpl"));
}

if(isset($_GET) && $_GET['action'] == 'addparent' || $_GET['action'] == 'addsubcat' ){
	if ($_GET['action'] == 'viewsub') {		
		$smarty->assign("add",'subcat');
	} else {		
		$smarty->assign("add",'parentcat');
	}
    $smarty->assign("captcha",recaptcha_get_html($pubkey));
	$smarty->assign("centercontent",$smarty->fetch("category/addcat.tpl"));
}

$smarty->assign("variables", $variables);
$smarty->assign("left",$smarty->fetch("category/leftmenu.tpl"));
$smarty->assign("contentheading","Manage Categories");
$smarty->assign("content",$smarty->fetch("category/category.tpl"));

/* output to template */
$smarty->display("main.html");

?>

