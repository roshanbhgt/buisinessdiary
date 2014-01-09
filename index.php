<?php
// Includng configuration file
include 'configs/config.php';

$objGal = new Gallery();
$galImg = array(); 
$galImg = $objGal->getGalleryImages();
		
$smarty->assign('gallery', $galImg);
$smarty->assign('content', $smarty->fetch('home.tpl'));
$smarty->display('two-coloumn-left.html');

?>
