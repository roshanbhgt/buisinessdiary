<?php
	// Includng configuration file
	include 'configs/config.php';

    $smarty->assign('title', 'My Locations');
    $smarty->assign('content', $smarty->fetch('user/dashboard.tpl'));
    $smarty->display('two-coloumn-left.html');

?>