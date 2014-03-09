<?php
	// Includng configuration file
	include 'configs/config.php';

    $smarty->assign('title', 'Contact Us');
	$smarty->assign('content', $smarty->fetch('contactus.tpl'));
	$smarty->display('two-coloumn-right.html');

?>