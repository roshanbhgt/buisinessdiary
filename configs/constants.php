<?php

// Defining Domain Constant
define ('FRONTEND','http://'.$_SERVER['HTTP_HOST'].'/buisinessdiary');
define ('BACKEND','http://'.$_SERVER['HTTP_HOST'].'/buisinessdiary/cpanel/');
define ('ROOT_BACKEND_PATH',$_SERVER['DOCUMENT_ROOT'].'/buisinessdiary/cpanel/');
define ('ROOT_FRONT_PATH',$_SERVER['DOCUMENT_ROOT'].'/buisinessdiary');
define ('SESSION_BACKEND_PATH',$_SERVER['DOCUMENT_ROOT'].'/buisinessdiary/cpanel/session');
define ('SESSION_FRONTEND_PATH',$_SERVER['DOCUMENT_ROOT'].'/buisinessdiary/session');
define ('DB_BACKUP_PATH',$_SERVER['DOCUMENT_ROOT'].'/buisinessdiary/cpanel/backup');
define ('GALLERYIMAGE',$_SERVER['DOCUMENT_ROOT'].'/buisinessdiary/media/gallery');
define ('CATEGORYIMAGE',$_SERVER['DOCUMENT_ROOT'].'/buisinessdiary/media/category');
define('REC_PER_PAGE',30);

// Defining Table Contants
define ('ADMIN','admin');
define ('CATEGORIES','bcategory');
define ('LIST','blist');
define ('PAGES','pages');
define ('GALLERY','gallery');
define ('GALLERYIMAGES','galleryimage');
define ('COUNTRY','country');
define ('STATE','state');
define ('REGIONS','regions');
define ('CONTACTUS','contactus');
define ('BACKUP','dbbackup');
define ('USERTYPE','usertype');
define ('USER','user');
define ('EMAILNEWSLETTER','emailnewsletter');
define ('FEEDBACK','feedback');
define ('QUIKLIST','quiklist');
define ('SUGGESTLIST','suggestbus');

require('classes/User.class.php');
/* require('classes/Buisiness.class.php'); */
require('classes/Categries.class.php');
require('classes/Emailnewsletter.class.php');
require('classes/Pages.class.php');
require('classes/Gallery.class.php');
/* require('classes/System.class.php'); */
require('classes/Webforms.class.php');
require('includes/functions.php');

