<?php
// Including config file
require('configs/config.php');

// Checked whether user is login or not 
checkAuthentication();
$smarty->assign("title","Buisiness Diary - Manage categories");

$objCat = new Categries();

if(isset($_POST) && $_POST['addparentcat'] == 'addparentcat' || $_POST['addsubcat'] == 'addsubcat' ){
	$data = $_POST;		
	if ( isset($data['title'])	) {
		if ($_POST['addparentcat'] == 'addparentcat') {
			$data['parent_id'] = 0;
		} elseif($_POST['addsubcat'] == 'addsubcat') {
			if(intval($data['parentcat'])>0){
				$data['parent_id'] = $data['parentcat'];
			} else {
				$variables['addcaterror'] = 'Please select subcategory from available options.';
				return ;
			}
		}
		if ($objCat->addCategory($data)) {
			$variables['success'] = 'Category added successfully.';
			header('Location: '.BACKEND.'managecat.php');
			exit;
		} else {
			$variables['addcaterror'] = 'Invalid category information.';
		}
	} else {
		$variables['addcaterror'] = 'All the field are required.';
	}
}

if(isset($_POST) && $_POST['updateparentcat'] == 'updateparentcat' || $_POST['updatesubcat'] == 'updatesubcat'){
	$data = $_POST;
	$id = intval($_POST['id']);
	if(	!empty($data['title']) && $id != 0	){		
		if ($_POST['updateparentcat'] == 'updateparentcat') {
			$data['parent_id'] = 0;			
		}
		if($objCat->updateCategory($data)){
			$variables['success'] = "Category information updated successfully.";
		} else {
			$variables['updatecaterror'] = "Unable to save record.";
		}	
	} else {
		$variables['updatecaterror'] = "All the field are compulsory ";
	}
	if ($_POST['updatesubcat'] == 'updatesubcat') {
		$category = $objCat->getSubcat($id);
		$smarty->assign("edit",'editsubcat');
	} else {
		$category = $objCat->getParentcat($id);
		$smarty->assign("edit",'editparentcat');
	}	
	$smarty->assign("category",$category);
	$smarty->assign("centercontent",$smarty->fetch("category/editcat.tpl"));
}

if(isset($_GET) && $_GET['action'] == 'viewparent' || $_GET['action'] == '' || $_GET['action'] == 'viewsub'){
	if ($_GET['action'] == 'viewsub') {
		$catAll = $objCat->getAllSubcat();
		$smarty->assign("view",'viewsub');
	} else {
		$catAll = $objCat->getAllParentcat();
		$smarty->assign("view",'viewparent');
	}
	$smarty->assign("catall",$catAll);
	$smarty->assign("centercontent",$smarty->fetch("category/viewall.tpl"));
}

if(isset($_GET) && $_GET['action'] == 'editparentcat' || $_GET['action'] == 'editsubcat'){
	$id = intval($_GET['id']);
	if ($_GET['action'] == 'editsubcat') {
		$category = $objCat->getSubcat($id);
		$smarty->assign("edit",'editsubcat');
	} else {
		$category = $objCat->getParentcat($id);
		$smarty->assign("edit",'editparentcat');
	}	
	$smarty->assign("category",$category);
	$smarty->assign("centercontent",$smarty->fetch("category/editcat.tpl"));
}

if(isset($_GET) && $_GET['action'] == 'addparent' || $_GET['action'] == 'addsubcat' ){
	if ($_GET['action'] == 'addsubcat') {		
		$smarty->assign("add",'subcat');
		$catAll = $objCat->getAllParentcat();
		$smarty->assign("parentCat",$catAll);
	} else {		
		$smarty->assign("add",'parentcat');
	}
	$smarty->assign("centercontent",$smarty->fetch("category/addcat.tpl"));
}

if(isset($_GET) && $_GET['action'] == 'deleteparentcat' || $_GET['action'] == 'deletesubcat' ){
	$id = intval($_GET['id']);
	if(isset($_GET['id']) &&  $id != 0){
		if($objCat->getDeletecat($id)){
			$variables['success'] = 'Category deleted successfully.';
		} else {
			$variables['success'] = 'Unable to delete category.';
		}
	} else {
		$variables['success'] = 'Category not exist.';
	}
	
	if ($_GET['action'] == 'deletesubcat') {
		$catAll = $objCat->getAllSubcat();
		$smarty->assign("view",'viewsub');
	} else {
		$catAll = $objCat->getAllParentcat();
		$smarty->assign("view",'viewparent');
	}
	$smarty->assign("catall",$catAll);
	$smarty->assign("centercontent",$smarty->fetch("category/viewall.tpl"));
	
}

$smarty->assign("variables", $variables);
$smarty->assign("left",$smarty->fetch("category/leftmenu.tpl"));
$smarty->assign("contentheading","Manage Categories");
$smarty->assign("content",$smarty->fetch("category/category.tpl"));

/* output to template */
$smarty->display("main.html");

?>

