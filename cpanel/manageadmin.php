<?php
// Including config file
require('configs/config.php');

// Checked whether user is login or not 
checkAuthentication();
$smarty->assign("title","Buisiness Diary - Manage admin");

$objAdmin = new Admin();

if(isset($_POST) && $_POST['adduser'] == 'adduser' ){        
	$cptchaChallengeField = $_POST["recaptcha_challenge_field"]; 
	$captchaResponseField = $_POST["recaptcha_response_field"];
	if ( validateCaptcha($privkey, $cptchaChallengeField, $captchaResponseField) ) {
		$data = $_POST;
		if ( 
			isset($data['firstname']) && isset($data['lastname']) 
			&& isset($data['username']) && isset($data['password']) && isset($data['email'])	
		) {
			// Validating email
			if (!validateEmail($data['email'])) {
				$variables['adduserError'] = 'Not a valid email id.';
			} elseif($objAdmin->isDuplicateEmail($data['email'])) {
				$variables['adduserError'] = 'User with email already exist.';
			} elseif ($objAdmin->isDuplicateUsername($data['username'])) {
				$variables['adduserError'] = 'Username already exist. Please choose different.';
			} elseif ($objAdmin->addUser($data)) {
				$variables['success'] = 'Admin user successfully added.';
				header('Location: '.BACKEND.'manageadmin.php');
				exit;
			} else {
				$variables['adduserError'] = 'Invalid user information.';
			}
		} else {
			$variables['adduserError'] = 'All the field are required.';
		}
	} else {
		$variables['adduserError'] = 'Invalid captcha entered.';
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
	$adminAccts = $objAdmin->getAllAcounts();
	$smarty->assign("admins",$adminAccts);
	$smarty->assign("centercontent",$smarty->fetch("admin/viewall.tpl"));
}

if(isset($_GET) && $_GET['action'] == 'edit'){
	$id = intval($_GET['id']);
	$adminAcct = $objAdmin->getAcount($id);
	$smarty->assign("admin",$adminAcct);
	$smarty->assign("centercontent",$smarty->fetch("admin/edituser.tpl"));
}

if(isset($_GET) && $_GET['action'] == 'add'){	
    $smarty->assign("captcha",recaptcha_get_html($pubkey));
	$smarty->assign("centercontent",$smarty->fetch("admin/adduser.tpl"));
}

$smarty->assign("variables", $variables);
$smarty->assign("left",$smarty->fetch("admin/leftmenu.tpl"));
$smarty->assign("contentheading","Manage Admin");
$smarty->assign("content",$smarty->fetch("system/system.tpl"));

/* output to template */
$smarty->display("main.html");

?>

