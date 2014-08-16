<?php
	// Includng configuration file
	include 'configs/config.php';
	
	// Check whether user is login or not
	checkAuthentication();
	$objReview = new Review();
    $variables = '';

    if(isset($_GET['action']) && $_GET['action'] == 'remove' && isset($_GET['id'])){
        $id = $_GET['id'];
        if($objReview->deleteReview($id)){
            $variables['success'] = 'Review deleted successfully';
        }else{
            $variables['error'] = 'Unable to delete review.';
        }
    }
	
	$reviews = $objReview->getReviewsByUser($_SESSION['userid']);
	
	$smarty->assign('reviews', $reviews);
    $smarty->assign('variables', $variables);
	$smarty->assign('title', 'My Review');
	$smarty->assign('content', $smarty->fetch('user/myreview.tpl'));
	$smarty->display('two-coloumn-left.html');
	
?>