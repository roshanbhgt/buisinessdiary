<?php 

// Including config file
require('configs/config.php');

$smarty->assign("title","Login to admin");
$objAdmin = new Admin();

if(isset($_POST) && $_POST['login'] == 'login' ){
	$cptchaChallengeField = $_POST["recaptcha_challenge_field"]; 
	$captchaResponseField = $_POST["recaptcha_response_field"];
	// if (validateCaptcha($privkey, $cptchaChallengeField, $captchaResponseField)) {
		if( !empty($_POST['username']) && !empty($_POST['password'])){
			$username = trim($_POST['username']);
			$password = trim($_POST['password']);
			if($objAdmin->login($username,$password)){
				$variables['success'] = 'You have successfully login to admin panel.';
				header('Location: '.BACKEND.'/index.php');
				exit;
			} else {
				$variables['loginError'] = 'Invalid login details .';
			}
		} else {
			$variables['loginError'] = 'Username and Password can not be empty.';
		}
	/* } else {
		$variables['loginError'] = 'Invalid captcha entered.';
	} */
}

$smarty->assign("variables",$variables);
$smarty->assign("captcha",recaptcha_get_html($pubkey));
$smarty->assign('contents',$smarty->fetch('admin/login.tpl'));

unset($variables);

/* output to template */
$smarty->display("empty.html");

?>