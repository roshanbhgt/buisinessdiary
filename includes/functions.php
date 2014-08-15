<?php
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
 *
 * Function to check whether user is login or not
 *
 */
function checkAuthentication(){
	if(empty($_SESSION['userid']) && empty($_SESSION['roleid']) ){
		if($_SESSION['roleid'] != 'general'){
			header('Location: '.FRONTEND.'/login-register');
			exit;
		}
	}
}

/**
 * Function to get countries
 * @return array
 * @params none
 */
function getCountry(){
    global $dbObj;
    $sql = "SELECT * FROM ".COUNTRY." ORDER BY title ASC " ;
    $res = $dbObj->fetch_all_array($sql);
    return $res;
}

/**
 * @return array
 * @param int country id
 */
function getState(){
    global $dbObj;
    $sql = "SELECT * FROM ".STATE." ORDER BY title ASC";
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
    $sql = "SELECT * FROM ".REGIONS." ORDER BY region ASC";
    $res = $dbObj->fetch_all_array($sql);
    return $res;
}

?>
