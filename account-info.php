<?php
	// Includng configuration file
	include 'configs/config.php';

    $variables = '';

    $smarty->assign('variables', $variables);
    $smarty->assign('title', 'Account Information');
    $smarty->assign('content', $smarty->fetch('user/accountinfo.tpl'));
    $smarty->display('two-coloumn-left.html');

?>