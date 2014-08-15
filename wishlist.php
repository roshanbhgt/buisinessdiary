<?php

// Includng configuration file
include 'configs/config.php';

// Check whether user is login or not
checkAuthentication();

if(isset($_GET['action']) && $_GET['action'] == 'add' && isset($_GET['id']) && intval($_GET['id']) != 0){
    $id = $_GET['id'];
    if ($objUser->inWishlist($id)) {
        $variables['success'] = 'You have already added the business in wishlist.';
        header('Location: '.FRONTEND.'/mywishlist');
        exit;
    } else {
        if ($objUser->addToWishlist($id)) {
            $variables['success'] = 'You have already added the business in wishlist.';
            header('Location: '.FRONTEND.'/mywishlist');
            exit;
        } else {
            $variables['error'] = 'Unable to added the business to wishlist.';
            header('Location: '.$_SERVER['HTTP_REFERER']);
            exit;
        }
    }
}

if(isset($_GET['action']) && $_GET['action'] == 'remove' && isset($_GET['id']) && intval($_GET['id']) != 0){
    if($objUser->removeFromWishlist($_GET['id'])){
        $variables['success'] = 'Item remove from wishlist successfully.';
        header('Location: '.FRONTEND.'/mywishlist');
        exit;
    } else {
        $variables['error'] = 'Unable to remove the item from wishlist.';
        header('Location: '.FRONTEND.'/mywishlist');
        exit;
    }
}

?>