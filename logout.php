<?php
	// Includng configuration file
	include 'configs/config.php';
	
	session_destroy();
	
	header('Location: http://'.$_SERVER['HTTP_HOST'].'/buisinessdiary/');
	exit;

?>