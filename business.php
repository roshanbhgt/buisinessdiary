<?php
// Includng configuration file
include 'configs/config.php';

$id = $_GET['id'];

$business = $objBuis->getBuisinessListById($id);
$objReview = new Review();

$reviews = $objReview->getReviews($id);
$rating = $objReview->getRating($id);

$rating = (105*$rating*20)/100;

$i = 0;
if(is_array($reviews)){
	foreach($reviews as $val){
		$reviews[$i]['rating'] = (105*$val['rating']*20)/100;
		$i = $i + 1; 	
	}
}

$smarty->assign('business', $business);
$smarty->assign('reviews', $reviews);
$smarty->assign('rating', $rating);
$smarty->assign('title', $business['title']);
$smarty->assign('content', $smarty->fetch('business/view.tpl'));
$smarty->display('two-coloumn-right.html');