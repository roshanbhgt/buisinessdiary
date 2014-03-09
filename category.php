<?php
	// Includng configuration file
	include 'configs/config.php';

    $identifier = $_GET['identifier'];
	$category = $objCat->getCategoryByIdentifier($identifier);

	$smarty->assign('cat', $category);
    $smarty->assign('title', $category['title']);
	$smarty->assign('content', $smarty->fetch('category/list.tpl'));
	$smarty->display('two-coloumn-right.html');
?>