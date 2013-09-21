<?php
// Loding constant
require_once ('configs/constants.php');

// Session setting 
ini_set('session.save_handler', 'files');
$sessionpath = SESSION_BACKEND_PATH;

ini_set('session.save_path', $sessionpath);
if(!isset($_SESSION) && !headers_sent()){
	session_start();	
	ini_set('session.gc_probability', 1);
}
ini_set('session.gc_maxlifetime', 50*30*60);


set_time_limit(0);
date_default_timezone_set("Asia/Calcutta");
ini_set('display_errors', '1');
error_reporting(E_ALL ^ E_NOTICE);

// Loading smarty library
require_once ('../libs/Database/Database.class.php');
$dbObj = new Database('localhost', 'root', '', 'buisiness_diary');


// Loading smarty library
require_once ('../libs/Smarty/Smarty.class.php');

$smarty = new Smarty;

$smarty->force_compile = true;
$smarty->debugging = true;
$smarty->caching = true;
$smarty->cache_lifetime = 30;

// Loading captcha library
require_once("../libs/Recaptcha/recaptchalib.php");

$pubkey  = "6LdTMuYSAAAAANfuXQDkdpNRHVqa11dTMPrQQdxt";
$privkey = "6LdTMuYSAAAAAL25lUALp8xFCNF9x7lW_DiyArze";

$rsp = null;

require('classes/Admin.class.php');
require('classes/Categries.class.php');
require('classes/System.class.php');
require('includes/functions.php');

$smarty->assign('BACKEND',BACKEND);
$smarty->assign('FRONTEND',FRONTEND);
$smarty->assign('date',date("F j, Y, g:i a"));
$smarty->assign('admin',$_SESSION['admin']);
 
$filename = str_replace(".php", "", basename($_SERVER["SCRIPT_NAME"]));
$smarty->assign('filename',$filename);

