<?php

// Includng configuration file
include 'configs/config.php';

// Check whether user is login or not
checkAuthentication();

$variables = '';

$favourites = $objUser->getUsersFavourite();

$smarty->assign('favourites', $favourites);
$smarty->assign('title', 'My Favourite');
$smarty->assign('content', $smarty->fetch('user/myfavourite.tpl'));
$smarty->display('two-coloumn-left.html');

?>