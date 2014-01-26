<?php
// Includng configuration file
include 'configs/config.php';

$objPage = new Pages();
$page = array();

if(isset($_GET['identifier'])){
	$identifier = trim($_GET['identifier']);
	$page = $objPage->getPage($identifier);
}

$smarty->assign('page', $page);
$smarty->assign('content', $smarty->fetch('page.tpl'));
$smarty->display('two-coloumn-right.html');

?>
