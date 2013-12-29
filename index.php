<?php
// Includng configuration file
include 'configs/config.php';

$smarty->assign('content', $smarty->fetch('home.tpl'));
$smarty->display('two-coloumn-left.html');

?>
