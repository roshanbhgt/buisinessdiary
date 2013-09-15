<?php 

// Including config file
require('configs/config.php');

$smarty->assign("title","Creating admin to manage website");
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
				header('Location: login.php');
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

$smarty->assign("variables",$variables);
$smarty->assign("captcha",recaptcha_get_html($pubkey));
$smarty->assign('contents',$smarty->fetch('admin/adduser.tpl'));

unset($variables);

/* output to template */
$smarty->display("empty.html");

?>