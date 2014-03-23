<?php
// Including config file
require('configs/config.php');

// Checked whether user is login or not
checkAuthentication();
$smarty->assign("title","Buisiness Diary - Manage users");

$objUser = new User();
$objSystem = new System();

$state = $objSystem->getStates();
$region = $objSystem->getRegions();
$country = getCountry();
$smarty->assign("country", $country);
$smarty->assign("state", $state);
$smarty->assign("city", $region);

if($_GET['action'] == 'adduser' && $_GET['action'] != ''){
	$smarty->assign("centercontent",$smarty->fetch("user/adduser.tpl"));
}

if($_POST['adduser'] == 'adduser'){
	$data = $_POST;
	if( $data['firstname'] != '' && $data['lastname'] != '' && $data['email'] != '' &&
		$data['gender'] != '' && $data['city'] != '' && $data['state'] != '' &&
		$data['country'] != '' && $data['postcode'] != '' && $data['password'] != '' ){
		if (validateEmail($data['email'])) {
			if ($data['password'] == $data['confpassword']) {
				if ($objUser->duplEmail($data['email'])) {
					if ($objUser->addUser($data)) {
						$variables['success'] = "Unable to save record successfully.";
					} else {
						$variables['error'] = "Unable to save record successfully.";
					}
				} else {
					$variables['error'] = "User with the same email already exist.";
				}
			} else {
				$variables['error'] = "Password and confirm password not matching.";
			}
		} else {
			$variables['error'] = "Please enter valid email address.";
		}
	} else {
		$variables['error'] = "All the * mark fields are compulsory.";
	}
}

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

