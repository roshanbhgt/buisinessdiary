<?php
	// Includng configuration file
	include 'configs/config.php';

    $smarty->assign('title', 'Register / Login');
	$smarty->assign('content', $smarty->fetch('user/login-register.tpl'));
	$smarty->display('one-coloumn.html');

?>