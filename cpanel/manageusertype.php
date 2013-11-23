<?php
// Including config file
require('configs/config.php');

// Checked whether user is login or not 
checkAuthentication();
$smarty->assign("title","Buisiness Diary - Manage user type");

$objUser = new User();

if($_POST['addusertype'] == 'addusertype'){
	$data = $_POST;
	if ( isset($data['role'])) {		
		if ($objUser->addUserType($data)) {
			$variables['success'] = 'Usertype added successfully.';
			header('Location: '.BACKEND.'manageusertype.php');
			exit;
		} else {
			$variables['error'] = 'Invalid user type information.';
		}
	} else {
		$variables['error'] = 'All the field are required.';
	}
}

if($_GET['action'] == 'addusertype'){
	$smarty->assign("centercontent",$smarty->fetch("user/addusertype.tpl"));
}

if($_GET['action'] == 'deleteusertype'){
	$id = intval($_GET['id']);
	if($objUser->deleteUserType($id)){
		$variables['success'] = 'User type deleted successfully.';
	} else {
		$variables['error'] = 'Unable to delete user type.';
	}
}

if($_GET['action'] == 'viewall' || $_GET['action'] == ''){
	$userTypes = $objUser->getUserTypes();
	$smarty->assign("usertypes",$userTypes);
	$smarty->assign("centercontent",$smarty->fetch("user/viewusertypes.tpl"));
}



$smarty->assign("variables", $variables);
$smarty->assign("left",$smarty->fetch("user/leftmenu.tpl"));
$smarty->assign("contentheading","Manage Pages");
$smarty->assign("content",$smarty->fetch("user/user.tpl"));

/* output to template */
$smarty->display("main.html");

?>

