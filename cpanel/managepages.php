<?php
// Including config file
require('configs/config.php');

// Checked whether user is login or not 
checkAuthentication();
$smarty->assign("title","Buisiness Diary - Manage pages");

$objPages = new Pages();

if(isset($_POST) && $_POST['addpage'] == 'addpage' ){
	$data = $_POST;
	if ( isset($data['title']) ) {
		// Validating email
		if ($objPages->isDuplicatePage($data['title'])) {
			$variables['addpageerror'] = 'Page already exist.';
		} elseif ($objPages->addPage($data)) {
			$variables['success'] = 'Page successfully added.';
			header('Location: '.BACKEND.'managepages.php');
			exit;
		} else {
			$variables['addpageerror'] = 'Invalid page information.';
		}
	} else {
		$variables['addpageerror'] = 'All the field are required.';
	}
}

if(isset($_POST) && $_POST['updatepage'] == 'updatepage'){
	$data = $_POST;
	$id = intval($_POST['id']);
	if(
		!empty($data['title']) && !empty($data['id'])
	){
		if($objPages->updatePage($data)){
			$variables['success'] = "Page updated successfully.";
		} else {
			$variables['error'] = "Unable to save record.";
		}	
	} else {
		$variables['error'] = "All the field are compulsory ";
	}
	
	$adminPage = $objPages->getPage($id);
	$smarty->assign("page",$adminPage);
	$smarty->assign("centercontent",$smarty->fetch("pages/viewall.tpl"));
}

if(isset($_GET) && $_GET['action'] == 'viewall' || $_GET['action'] == ''){
	$adminPages = $objPages->getAllPages();
	$smarty->assign("pages",$adminPages);
	$smarty->assign("centercontent",$smarty->fetch("pages/viewall.tpl"));
}

if(isset($_GET) && $_GET['action'] == 'editpage'){
	$id = intval($_GET['id']);
	$adminPage = $objPages->getPage($id);
	$smarty->assign("page",$adminPage);
	$smarty->assign("centercontent",$smarty->fetch("pages/editpage.tpl"));
}

if(isset($_GET) && $_GET['action'] == 'addpage'){
	$smarty->assign("centercontent",$smarty->fetch("pages/addpage.tpl"));
}

if(isset($_GET) && $_GET['action'] == 'deletepage'){
	$id = intval($_GET['id']);
	if($objPages->deletePage($id)){
		$variables['success'] = "Page deleted successfully.";
		$adminPages = $objPages->getAllPages();
		$smarty->assign("pages",$adminPages);
		$smarty->assign("centercontent",$smarty->fetch("pages/viewall.tpl"));
	} else {
		header('Location: '.BACKEND.'managepages.php');
		exit;
	}	
}

$smarty->assign("variables", $variables);
$smarty->assign("left",$smarty->fetch("pages/leftmenu.tpl"));
$smarty->assign("contentheading","Manage Pages");
$smarty->assign("content",$smarty->fetch("pages/pages.tpl"));

/* output to template */
$smarty->display("main.html");

?>

