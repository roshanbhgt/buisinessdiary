<?php
// Including config file
require('configs/config.php');

// Checked whether user is login or not 
checkAuthentication();
$smarty->assign("title","Buisiness Diary - Manage gallery");

$objGallery = new Gallery();

if(isset($_POST) && $_POST['addgallery'] == 'addgallery' ){
	$data = $_POST;
	$count = count($_FILES);
	if($count){
		$data = $objGallery->uploadImage($count, $data);
	}
	$data['bcount'] = $count; 
	if ( isset($data['title']) && !empty($data['title']) ) {
		if ($objGallery->addGallery($data)) {
			$variables['success'] = 'Gallery successfully added.';
			header('Location: '.BACKEND.'managegallery.php');
			exit;
		} else {
			$variables['addgalError'] = 'Invalid user information.';
		}
	} else {
		$variables['addgalError'] = 'All the field are required.';
	}	
}

if(isset($_POST) && $_POST['updategallery'] == 'updategallery'){
	$data = $_POST;
	$count = count($_FILES);
	$data = $objGallery->uploadImage($count, $data);
	$id = intval($_POST['id']);
	if( isset($data['title']) ){
		if($objGallery->updateGallery($data)){
			$variables['success'] = "Gallery information updated successfully.";
		} else {
			$variables['error'] = "Unable to save record.";
		}	
	} else {
		$variables['error'] = "All the field are compulsory ";
	}
	
	$adminGallery = $objGallery->getGallery($id);
	$smarty->assign("gallery",$adminGallery);
	$smarty->assign("centercontent",$smarty->fetch("gallery/editgallery.tpl"));
}

if(isset($_GET) && $_GET['action'] == 'viewgal' || isset($_GET['id']) != ''){
	$id = intval($_GET['id']);
	$adminGalleryImages = $objGallery->getGalleryImages($id);
	$adminGallery = $objGallery->getGallery($id);
	$smarty->assign("gallery",$adminGallery);
	$smarty->assign("galleryimages",$adminGalleryImages);
	$smarty->assign("centercontent",$smarty->fetch("gallery/viewgalimages.tpl"));
}

if(isset($_GET) && $_GET['action'] == 'viewall' || $_GET['action'] == ''){
	$adminGallery = $objGallery->getAllGalleries();
	$smarty->assign("gallery",$adminGallery);
	$smarty->assign("centercontent",$smarty->fetch("gallery/viewall.tpl"));
}

if(isset($_GET) && $_GET['action'] == 'edit'){
	$id = intval($_GET['id']);
	$adminGallery = $objGallery->getGallery($id);
	$smarty->assign("gallery",$adminGallery);
	$smarty->assign("centercontent",$smarty->fetch("gallery/editgallery.tpl"));
}

if(isset($_GET) && $_GET['action'] == 'add'){
	$smarty->assign("centercontent",$smarty->fetch("gallery/addgallery.tpl"));
}

if(isset($_GET) && $_GET['action'] == 'delete'){
	$id = intval($_GET['id']);
	if ($objGallery->deleteGallery($id)) {
		$variables['success'] = "Gallery deleted successfully.";
	} else {
		$variables['error'] = "Unable to delete gallery.";
	}
	$adminGallery = $objGallery->getAllGalleries();
	$smarty->assign("gallery",$adminGallery);
	$smarty->assign("centercontent",$smarty->fetch("gallery/viewall.tpl"));
}

if(isset($_GET) && $_GET['action'] == 'deleteGalImg'){
	$id = intval($_GET['id']);
	if ($objGallery->deleteGalImg($id)) {
		$variables['success'] = "Image deleted successfully.";
	} else {
		$variables['error'] = "Unable to delete image from gallery.";
	}
	$adminGalleryImages = $objGallery->getGalleryImages($id);
	$adminGallery = $objGallery->getGallery($id);
	$smarty->assign("gallery",$adminGallery);
	$smarty->assign("galleryimages",$adminGalleryImages);
	$smarty->assign("centercontent",$smarty->fetch("gallery/viewgalimages.tpl"));
}


$smarty->assign("variables", $variables);
$smarty->assign("left",$smarty->fetch("gallery/leftmenu.tpl"));
$smarty->assign("contentheading","Manage Gallery");
$smarty->assign("content",$smarty->fetch("gallery/gallery.tpl"));

/* output to template */
$smarty->display("main.html");

?>

