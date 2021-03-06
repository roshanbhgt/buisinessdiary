<?php

/** Start of error log managment setting **/
require_once ('libs/Error/Errorhandler.class.php');

// Report simple running errors
ErrorHandler::Init(E_ERROR | E_PARSE);

// Display Errors
ErrorHandler::$displayErrors = TRUE;

// Log file path
// ErrorHandler::Init(E_ALL, 'error.log');
ErrorHandler::$logFile = $_SERVER['DOCUMENT_ROOT'].'/buisinessdiary/error/error.log';

// Mail on E_USER_ERROR
ErrorHandler::$mailOnErrorType = E_USER_ERROR; // any type of error eg E_ALL
ErrorHandler::$mail = 'roshanbhgt@gmail.com';
ErrorHandler::$mailSub = 'Critical error.';

/** End of error log managment setting **/

// Loding constant
require_once ('configs/constants.php');

$logs = new Logs();

// Session setting
ini_set('session.save_handler', 'files');
$sessionpath = SESSION_FRONTEND_PATH;

ini_set('session.save_path', $sessionpath);
if(!isset($_SESSION) && !headers_sent()){
	session_start();
	ini_set('session.gc_probability', 1);

}
ini_set('session.gc_maxlifetime', 50*30*60);

set_time_limit(0);
date_default_timezone_set("Asia/Calcutta");

// Loading smarty library
require_once ('libs/Database/Database.class.php');
require_once ('libs/mail/autoload.php');

$dbObj = new Database();

// Loading smarty library
require_once ('libs/Smarty/Smarty.class.php');
require_once ('libs/Upload/Upload.class.php');

$smarty = new Smarty();

$smarty->force_compile = false;
$smarty->debugging = false;
$smarty->caching = false;
$smarty->cache_lifetime = 30;

// Loading captcha library and captcha settings
require_once("libs/Recaptcha/recaptchalib.php");

$pubkey  = "6LdTMuYSAAAAANfuXQDkdpNRHVqa11dTMPrQQdxt";
$privkey = "6LdTMuYSAAAAAL25lUALp8xFCNF9x7lW_DiyArze";

$rsp = null;

$objCat = new Categries();
$objUser = new User();
$objBuis = new Buisiness();

$country = getCountry();
$state = getState();
$region = getRegions();

$smarty->assign("state", $state);
$smarty->assign("city", $region);
$smarty->assign("country", $country);


$smarty->assign('catall', $objCat->getAllParentcat());
$smarty->assign('latbus', $objBuis->getListNewestBusiness());

$smarty->assign('session', $_SESSION);
$smarty->assign('FRONTEND', FRONTEND);
$smarty->assign('GALLERYIMAGE','http://'.$_SERVER['HTTP_HOST'].'/buisinessdiary/media/gallery');
$smarty->assign('CATEGORYIMAGE','http://'.$_SERVER['HTTP_HOST'].'/buisinessdiary/media/category');
$smarty->assign('BUSINESSIMAGE','http://'.$_SERVER['HTTP_HOST'].'/buisinessdiary/media/business');
