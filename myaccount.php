<?php
	// Includng configuration file
	include 'configs/config.php';

	// Check whether user is login or not
	checkAuthentication();

	$myinfo = $objUser->getUserInformation();
	$mynewsletter = $objUser->getNewsletter($myinfo['email']);

	$smarty->assign('myinfo', $myinfo);
	$smarty->assign('mynews', $mynewsletter);
    $smarty->assign('title', 'My Account');
	$smarty->assign('content', $smarty->fetch('user/dashboard.tpl'));
	$smarty->display('two-coloumn-left.html');

?>