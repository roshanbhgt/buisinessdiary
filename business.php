<?php
// Includng configuration file
include 'configs/config.php';

$id = $_GET['id'];

$business = $objBuis->getBuisinessListById($id);
$objReview = new Review();

$reviews = $objReview->getReviews($id);
$rating = $objReview->getRating($id);

$rating = (105*$rating*20)/100;

$smarty->assign('business', $business);
$smarty->assign('reviews', $reviews);
$smarty->assign('rating', $rating);
$smarty->assign('title', $business['title']);
$smarty->assign('content', $smarty->fetch('business/view.tpl'));
$smarty->display('two-coloumn-right.html');