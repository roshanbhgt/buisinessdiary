<?php
	// Includng configuration file
	include 'configs/config.php';

	// Check whether user is login or not
	checkAuthentication();

	session_destroy();

	header('Location: http://'.FRONTEND.'/');
	exit;

?>