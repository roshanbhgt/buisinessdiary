<?php
// Includng configuration file
include 'configs/config.php';
 
 
 
$smarty->force_compile = false;
$smarty->debugging = false;
$smarty->caching = true;
$smarty->cache_lifetime = 120;

$smarty->display('two-coloumn-left.html');

?>
