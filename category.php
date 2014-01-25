<?php
	// Includng configuration file
	include 'configs/config.php';
	
	$id = $_GET['id'];
	
	$smarty->assign('cat', $objCat->getCategoryById($id));
	$smarty->assign('content', $smarty->fetch('category/list.tpl'));
	$smarty->display('two-coloumn-left.html');
?>