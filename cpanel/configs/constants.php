<?php

// Defining Domain Constant
define ('FRONTEND','http://'.$_SERVER['HTTP_HOST'].'/buisinessdiary');
define ('BACKEND','http://'.$_SERVER['HTTP_HOST'].'/buisinessdiary/cpanel/');
define ('ROOT_BACKEND_PATH',$_SERVER['DOCUMENT_ROOT'].'/buisinessdiary/cpanel/');
define ('ROOT_FRONT_PATH',$_SERVER['DOCUMENT_ROOT'].'/buisinessdiary');
define ('SESSION_BACKEND_PATH',$_SERVER['DOCUMENT_ROOT'].'/buisinessdiary/session');
define ('GALLERYIMAGE',$_SERVER['DOCUMENT_ROOT'].'/buisinessdiary/media/gallery');

// Defining Table Contants
define ('ADMIN','admin');
define ('CATEGORIES','buisiness_category');
define ('LIST','buisiness_list');
define ('PAGES','pages');
define ('GALLERY','gallery');
define ('COUNTRY','country');
define ('STATE','state');
