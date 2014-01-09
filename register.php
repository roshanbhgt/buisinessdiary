<?php
	// Includng configuration file
	include 'configs/config.php';
	
	$smarty->assign('content', $smarty->fetch('user/register.tpl'));
	$smarty->display('two-coloumn-left.html');

?>