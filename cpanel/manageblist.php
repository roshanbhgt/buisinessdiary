<?php
// Including config file
require('configs/config.php');

// Checked whether user is login or not
checkAuthentication();

$smarty->assign("title","Buisiness Diary - Manage Buisiness");

$objBuisiness = new Buisiness();
$objCategory = new Categries();
$objSystem = new System();

$country = getCountry();
$smarty->assign("country", $country);
$category = $objCategory->getCategories();
$smarty->assign("category", $category);

if($_GET['action'] == 'viewbuisiness' || $_GET['action'] == ''){
	$pageId = isset($_GET['page']) ? intval($_GET['page']):0;
	$result = $objBuisiness->getBuisinessList($pageId);
	$buisinessLists = $result['businesslist'];
	$pageCount = $result['pagecount'];
	$smarty->assign("pages", $pageCount);
	$smarty->assign("buisinesslists",$buisinessLists);
	$smarty->assign("centercontent",$smarty->fetch("blist/viewall.tpl"));
}

if($_POST['addbusiness'] == 'addbusiness'){
	$data = $_POST;
	if($data['title'] != '' && $data['address1'] != ''
			&& $data['city'] != '' && $data['state'] != ''
			&& $data['country'] != '' && $data['postcode'] != '' && $data['phone'] != '' ){
		if($objBuisiness->addBusiness($data)){
			$variables['success'] = "Record saved successfully";
		}else{
			$variables['error'] = "Unable to save record";
		}
	} else {
		$variables['error'] = "All the * mark fields are compulsory";
	}
}

if($_POST['updatebusiness'] == 'updatebusiness' && intval($_POST['id']) != 0){
	$data = $_POST;
	if($data['title'] != '' && $data['address1'] != ''
			&& $data['city'] != '' && $data['state'] != ''
			&& $data['country'] != '' && $data['postcode'] != '' && $data['phone'] != '' ){
		if($objBuisiness->updateBusiness($data)){
			$variables['success'] = "Record saved successfully";
		}else{
			$variables['error'] = "Unable to save record";
		}
	} else {
		$variables['error'] = "All the * mark fields are compulsory";
	}
}

if($_GET['action'] == 'addbuisiness' || $_GET['action'] == ''){
	$id = $_GET['id'];
	$state = $objSystem->getStates();
	$region = $objSystem->getRegions();
	$smarty->assign("state", $state);
	$smarty->assign("city", $region);
	$smarty->assign("centercontent",$smarty->fetch("blist/addbuisiness.tpl"));
}

if($_GET['action'] == 'edit' || $_GET['action'] == ''){
	$id = $_GET['id'];
	$buisiness = $objBuisiness->getBuisinessById($id);
	$smarty->assign("business",$buisiness);
	$state = getState($buisiness['country']);
	$region = getRegions($buisiness['country'],$buisiness['state']);
	$smarty->assign("state", $state);
	$smarty->assign("city", $region);
	$smarty->assign("centercontent",$smarty->fetch("blist/editbuisiness.tpl"));
}

if($_GET['action'] == 'delete' && intval($_GET['id']) != 0){
	$id = $_GET['id'];
	if($objBuisiness->deleteBusiness($id)){
		$variables['success'] = "Record deleted successfully";
	}else{
		$variables['error'] = "Unable to delete record";
	}
}

$smarty->assign("variables", $variables);
$smarty->assign("left",$smarty->fetch("blist/leftmenu.tpl"));
$smarty->assign("contentheading","Manage Buisiness");
$smarty->assign("content",$smarty->fetch("blist/blist.tpl"));

/* output to template */
$smarty->display("main.html");

?>

