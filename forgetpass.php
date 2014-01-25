<?php
	// Includng configuration file
	include 'configs/config.php';
	
	$data = $_POST;
	if($data['email'] && validateEmail($data['email'])){
		$objUser->forgetPass($data['email']);
	}
	
	$smarty->assign('content', $smarty->fetch('user/forgetpass.tpl'));
	$smarty->display('one-coloumn.html');

?>