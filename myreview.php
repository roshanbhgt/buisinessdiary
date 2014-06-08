<?php
	// Includng configuration file
	include 'configs/config.php';
	
	// Check whether user is login or not
	checkAuthentication();
	
	$objReview = new Review();
	
	$reviews = $objReview->getReviewsByUser($_SESSION['userid']);
	
	$smarty->assign('reviews', $reviews);
	$smarty->assign('title', 'My Review');
	$smarty->assign('content', $smarty->fetch('user/myreview.tpl'));
	$smarty->display('two-coloumn-left.html');
	
?>