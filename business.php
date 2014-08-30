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

// Saving the recently viewed business
if(in_array($id,$_COOKIE['recently_view']) == false){
    if(count($_COOKIE['recently_view']) == 0){
        STATIC $j = 0;
        setcookie('recently_view[0]',$id,time()+86400,"/buisinessdiary");
        $j = $j + 1;
    } elseif(count($_COOKIE['recently_view']) == 5 ){
        unset($_COOKIE['recently_view'][0]);
        $j = $j - 1 ;
        setcookie('recently_view['.$j.']',$id,time()+86400,"/buisinessdiary");
        $j = $j + 1 ;
    } else {
        echo $j;
        setcookie('recently_view['.$j.']',$id,time()+86400,"/buisinessdiary");
        $j = $j + 1 ;
    }
}

$smarty->assign('business', $business);
$smarty->assign('reviews', $reviews);
$smarty->assign('rating', $rating);
$smarty->assign('title', $business['title']);
$smarty->assign('content', $smarty->fetch('business/view.tpl'));
$smarty->display('two-coloumn-right.html');