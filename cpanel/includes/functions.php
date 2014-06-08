<?php

/**
 * 
 * Function to check whether user is login or not
 * 
 */
function checkAuthentication(){
	if(empty($_SESSION['adminId']) && empty($_SESSION['adminType']) ){
		if($_SESSION['adminType'] != 'administrator'){
			header('Location: '.BACKEND.'login.php/');
			exit;
		}
	}
}

/**
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

/**
 * Function to generte seo url
 * 
 * @param string $identifier
 * @return string 
 */
function generateSeoUrl($identifier) {
	// Removing the blank spaces with the - sign
	$identifier = strtolower($identifier);
	$identifier = trim(preg_replace('/ +/', '-', preg_replace('/[^A-Za-z0-9 ]/', '', urldecode(html_entity_decode(strip_tags($identifier))))));;
	return $identifier;
}

/**
 * Function to generate pageination
 * 
 * 
 */
function getPagination($count){
	$paginationCount= round($count / REC_PER_PAGE);
	$paginationModCount= $count % PAGE_PER_NO;
	if(!empty($paginationModCount)){
		$paginationCount++;
	}
	return $paginationCount;
}

/**
 * Function to get countries
 * @return array
 * @params none
 */
function getCountry(){
    global $dbObj;
    $sql = "SELECT * FROM ".COUNTRY." ;";
    $res = $dbObj->fetch_all_array($sql);
    return $res;
}

/**
 * @return array
 * @param int country id
 */
function getState($countryid){
    global $dbObj;
    $sql = "SELECT * FROM ".STATE." WHERE countryId = ".$countryid;
    $res = $dbObj->fetch_all_array($sql);
    return $res;
}

/**
 * @param int $countryid
 * @param int $stateid
 * @return float
 *
 */
function getRegions($countryid, $stateid){
    global $dbObj;
    $sql = "SELECT * FROM ".REGIONS." WHERE countryId = ".$countryid." AND stateId = ".$stateid;
    $res = $dbObj->fetch_all_array($sql);
    return $res;
}