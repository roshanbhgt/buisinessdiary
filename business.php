<?php
// Includng configuration file
include 'configs/config.php';

$id = $_GET['id'];

$business = $objBuis->getBuisinessListById($id);


$smarty->assign('business', $business);
$smarty->assign('title', $business['title']);
$smarty->assign('content', $smarty->fetch('business/view.tpl'));
$smarty->display('two-coloumn-right.html');