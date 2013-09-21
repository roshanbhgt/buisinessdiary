<?php

/*
 * Functions validating captcha
 * 
 * @param cptcha key, cpatcha challenge field and captcha response field
 * @return boolean
 */
function validateCaptcha($captchaKey, $cptchaChallengeField, $captchaResponseField){
	$rsp = recaptcha_check_answer (
			$captchaKey,
			$_SERVER["REMOTE_ADDR"],
			$cptchaChallengeField,
			$captchaResponseField
	);
	
	/* process form when the API has confirmed validation */
	if ($rsp->is_valid) {
		return true;
	} else {
		return false;
	}
}

/**
 * 
 * @param varchar $email
 * @return boolean
 */
function validateEmail($email){
	if(preg_match("/^[a-z0-9]+([_\\.-][a-z0-9]+)*@([a-z0-9]+([\.-][a-z0-9]+)*)+\\.[a-z]{2,}$/i", $email) ) {
		return true;
	} else {
		return false;
	}
}

function checkAuthentication(){
	if(empty($_SESSION['adminId']) && empty($_SESSION['adminType']) ){
		if($_SESSION['adminType'] != 'administrator'){
			header('Location: http://localhost/buisinessdiary/cpanel/login.php/');
			exit;
		}
	}
}