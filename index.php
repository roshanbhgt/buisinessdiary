<?php
 /**
 * Example Application

 * @package Example-application
 */

require('libs/Smarty/Smarty.class.php');

$smarty = new Smarty;

$smarty->force_compile = false;
$smarty->debugging = false;
$smarty->caching = true;
$smarty->cache_lifetime = 120;

$smarty->display('two-coloumn-left.html');

?>
