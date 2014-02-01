<?php
	// Includng configuration file
	include 'configs/config.php';

    $identifier = $_GET['identifier'];
	
	$smarty->assign('cat', $objCat->getCategoryByIdentifier($identifier));
	$smarty->assign('content', $smarty->fetch('category/list.tpl'));
	$smarty->display('two-coloumn-right.html');
?>