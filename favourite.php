<?php

    // Includng configuration file
    include 'configs/config.php';

    // Check whether user is login or not
    checkAuthentication();

    if(isset($_GET['action']) && $_GET['action'] == 'mark' && isset($_GET['id']) && intval($_GET['id']) != 0){
        $id = $_GET['id'];
        if ($objUser->isFavourite($id)) {
           $variables['success'] = 'You have already mark the business as favourite.';
            header('Location: '.FRONTEND.'/myfavourite');
            exit;
        } else {
            if ($objUser->addToFavourite($id)) {
                $variables['success'] = 'You have already mark the business as favourite.';
                header('Location: '.FRONTEND.'/myfavourite');
                exit;
            } else {
                $variables['error'] = 'Unable to mark the business as favourite.';
                header('Location: '.$_SERVER['HTTP_REFERER']);
                exit;
            }
        }
    }

    if(isset($_GET['action']) && $_GET['action'] == 'unmark' && isset($_GET['id']) && intval($_GET['id']) != 0){
        if($objUser->removeFromFav($_GET['id'])){
            $variables['success'] = 'Item remove from favourites successfully.';
            header('Location: '.FRONTEND.'/myfavourite');
            exit;
        } else {
            $variables['error'] = 'Unable to review the item from favourite.';
            header('Location: '.FRONTEND.'/myfavourite');
            exit;
        }
    }


?>