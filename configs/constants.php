<?php

// Defining Domain Constant
define ('FRONTEND','http://'.$_SERVER['HTTP_HOST'].'/');
define ('BACKEND','http://'.$_SERVER['HTTP_HOST'].'/cpanel/');
define ('ROOT_BACKEND_PATH',$_SERVER['DOCUMENT_ROOT'].'/cpanel/');
define ('ROOT_FRONT_PATH',$_SERVER['DOCUMENT_ROOT'].'/');
define ('SESSION_BACKEND_PATH',$_SERVER['DOCUMENT_ROOT'].'/cpanel/session');
define ('SESSION_FRONTEND_PATH',$_SERVER['DOCUMENT_ROOT'].'/session');
define ('DB_BACKUP_PATH',$_SERVER['DOCUMENT_ROOT'].'/cpanel/backup');
define ('GALLERYIMAGE',$_SERVER['DOCUMENT_ROOT'].'/media/gallery');
define ('CATEGORYIMAGE',$_SERVER['DOCUMENT_ROOT'].'/media/category');
define ('BUSINESSIMAGE',$_SERVER['DOCUMENT_ROOT'].'/media/business');
define('REC_PER_PAGE',30);

// Defining Table Contants
define ('ADMIN','admin');
define ('CATEGORIES','bcategory');
define ('BLIST','blist');
define ('PAGES','pages');
define ('GALLERY','gallery');
define ('GALLERYIMAGES','galleryimage');
define ('LOGURL','log_url');
define ('LOGURLINFO','log_url_info');
define ('LOGVISITOR','log_visitor');
define ('LOGVISITORINFO','log_visitor_info');
define ('COUNTRY','country');
define ('STATE','state');
define ('REGIONS','regions');
define ('CONTACTUS','contactus');
define ('BACKUP','dbbackup');
define ('USERTYPE','usertype');
define ('USER','user');
define ('USERWISHLIST','user_wishlist');
define ('USERFAVOURITE','user_favourite');
define ('EMAILNEWSLETTER','emailnewsletter');
define ('FEEDBACK','feedback');
define ('QUIKLIST','quiklist');
define ('QUIKCOTE','quikqote');
define ('SUGGESTLIST','suggestbus');
define ('REVIEW','bus_review');

require('classes/User.class.php');
require('classes/Buisiness.class.php');
require('classes/Categries.class.php');
require('classes/Emailnewsletter.class.php');
require('classes/Pages.class.php');
require('classes/Gallery.class.php');
/* require('classes/System.class.php'); */
require('classes/Webforms.class.php');
require('classes/Review.class.php');
require('classes/Search.class.php');
require('classes/Logs.class.php');
require('includes/functions.php');

