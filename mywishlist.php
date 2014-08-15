<?php
// Includng configuration file
include 'configs/config.php';

// Check whether user is login or not
checkAuthentication();

$variables = '';



$wishlists = $objUser->getUsersWishlist();

$smarty->assign('wishlists', $wishlists);
$smarty->assign('variables', $variables);
$smarty->assign('title', 'My Favourite');
$smarty->assign('content', $smarty->fetch('user/mywishlist.tpl'));
$smarty->display('two-coloumn-left.html');

?>