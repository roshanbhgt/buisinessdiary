<?php 

// Including config file
require('configs/config.php');

$smarty->assign("title","Forget password?");
$objAdmin = new Admin();

if( isset($_POST) && $_POST['fpassword'] == 'fpassword' ){
		if( !empty($_POST['username']) ){
			$username = $_POST['username'];
			if($objAdmin->getPassword($username)){
				$variables['success'] = 'Password has been sent successfully to your email.';
				header('Location: index.php');
				exit;
			} else {
				$variables['forgetPassError'] = 'Invalid username.';
			}
		} else {
			$variables['forgetPassError'] = 'Username can not be empty.';
		}
	
}

$smarty->assign("variables",$variables);
$smarty->assign('contents',$smarty->fetch('admin/forgetpassword.tpl'));
unset($variables);

/* output to template */
$smarty->display("empty.html");

?>