<?php
// Including config file
require('configs/config.php');
// Checked whether user is login or not 
checkAuthentication();

$smarty->assign("title","Buisiness Diary - Cache Management");

if(isset($_POST) && $_POST['cache'] == 'clean'){
	
	$pathFront = str_replace('/','\\',ROOT_FRONT_PATH);
	$pathBack = str_replace('/','\\',ROOT_BACKEND_PATH);
	
	if(isset($_POST['front_templ_cache']) && $_POST['front_templ_cache'] == 'front_templ_cache'){
		if($handle = opendir($pathFront . 'templates_c/')){
			while (false !== ($file = readdir($handle))) {				
				if($file != "." && $file != ".."){
					if(is_file($pathFront . '/templates_c/' . $file))
						unlink($pathFront . '/templates_c/' . $file);					
				}
			}		
		}
	}
	
	if(isset($_POST['front_php_cache']) && $_POST['front_php_cache'] == 'front_php_cache'){		
		if($handle = opendir($pathFront . 'cache/')){
			while (false !== ($file = readdir($handle))) {				
				if($file != "." && $file != ".."){
					if(is_file($pathFront . '/cache/' . $file))
						unlink($pathFront . '/cache/' . $file);
				}
			}		
		}
	}
	
	if(isset($_POST['back_templ_cache']) && $_POST['back_templ_cache'] == 'back_templ_cache'){
		if($handle = opendir($pathBack . 'templates_c/')){
			while (false !== ($file = readdir($handle))) {
				if($file != "." && $file != ".."){
					if(is_file($pathBack . 'templates_c/' . $file))
						unlink($pathBack . 'templates_c/' . $file);
				}
			}
		}
	}
	
	if(isset($_POST['back_php_cache']) && $_POST['back_php_cache'] == 'back_php_cache'){
		if($handle = opendir($pathBack . 'cache/')){
			while (false !== ($file = readdir($handle))) {
				if($file != "." && $file != ".."){
					if(is_file($pathBack . 'cache/' . $file))
						unlink($pathBack . 'cache/' . $file);
				}
			}
		}
	}
	
	if(isset($_POST['front_session']) && $_POST['front_session'] == 'front_session'){
		if($handle = opendir($pathFront . 'session/')){
			while (false !== ($file = readdir($handle))) {
				if($file != "." && $file != ".."){
					if(is_file($pathFront . '/session/' . $file))
						unlink($pathFront . '/session/' . $file);
				}
			}
		}
	}
	
	if(isset($_POST['back_session']) && $_POST['back_session'] == 'back_session'){
		if($handle = opendir($pathBack . 'session/')){
			while (false !== ($file = readdir($handle))) {
				if($file != "." && $file != ".."){
					if(is_file($pathBack . 'session/' . $file))
						unlink($pathBack . 'session/' . $file);
				}
			}
		}
	}
	$variables['success'] = "Cache clean successfully";
}

$smarty->assign("variables",$variables);
$smarty->assign("content",$smarty->fetch("system/cachemgmt.tpl"));

/* output to template */
$smarty->display("main.html");


?>

