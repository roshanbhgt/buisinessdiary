<?php
	// Includng configuration file
	include 'configs/config.php';

	// Check whether user is login or not
	checkAuthentication();

	$smarty->assign('title', 'My Places');
	$smarty->assign('content', $smarty->fetch('user/dashboard.tpl'));
	$smarty->display('two-coloumn-left.html');

?>