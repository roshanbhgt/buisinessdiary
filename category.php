<?php
	// Includng configuration file
	include 'configs/config.php';

    $identifier = $_GET['identifier'];
	$category = $objCat->getCategoryByIdentifier($identifier);
	$businesslist = $objBuis->getBuisinessListByCat($category['cat_id']);
	
	// echo '<pre>';
	// print_r($businesslist);
	// exit;
	
	$smarty->assign('cat', $category);
	$smarty->assign('businesslist', $businesslist);
    $smarty->assign('title', $category['title']);
	$smarty->assign('content', $smarty->fetch('category/list.tpl'));
	$smarty->display('two-coloumn-right.html');
?>