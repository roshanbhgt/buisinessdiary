<?php

// Defining Domain Constant
define ('FRONTEND','http://'.$_SERVER['HTTP_HOST'].'/buisinessdiary');
define ('BACKEND','http://'.$_SERVER['HTTP_HOST'].'/buisinessdiary/cpanel/');
define ('ROOT_BACKEND_PATH',$_SERVER['DOCUMENT_ROOT'].'/buisinessdiary/cpanel/');
define ('ROOT_FRONT_PATH',$_SERVER['DOCUMENT_ROOT'].'/buisinessdiary');
define ('SESSION_BACKEND_PATH',$_SERVER['DOCUMENT_ROOT'].'/buisinessdiary/cpanel/session');
define ('DB_BACKUP_PATH',$_SERVER['DOCUMENT_ROOT'].'/buisinessdiary/cpanel/backup');
define ('GALLERYIMAGE',$_SERVER['DOCUMENT_ROOT'].'/buisinessdiary/media/gallery');
define ('CATEGORYIMAGE',$_SERVER['DOCUMENT_ROOT'].'/buisinessdiary/media/category');
define ('BUSINESSIMAGE',$_SERVER['DOCUMENT_ROOT'].'/buisinessdiary/media/business');
define('REC_PER_PAGE',15);
define('PAGE_PER_NO',6);

// Defining Table Contants
define ('ADMIN','admin');
define ('CATEGORIES','bcategory');
define ('LIST','blist');
define ('PAGES','pages');
define ('GALLERY','gallery');
define ('GALLERYIMAGES','galleryimage');
define ('COUNTRY','country');
define ('STATE','state');
define ('EMAILNEWSLETTER','emailnewsletter');
define ('REGIONS','regions');
define ('CONTACTUS','contactus');
define ('BACKUP','dbbackup');
define ('USERTYPE','usertype');
define ('USER','user');
define ('FEEDBACK','feedback');
define ('QUIKLIST','quiklist');
define ('SUGGESTLIST','suggestlist');