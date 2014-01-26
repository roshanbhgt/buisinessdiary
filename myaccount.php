<?php
	// Includng configuration file
	include 'configs/config.php';
	
	$smarty->assign('page', $page);
	$smarty->assign('content', $smarty->fetch('user/dashboard.tpl'));
	$smarty->display('two-coloumn-left.html');

?>