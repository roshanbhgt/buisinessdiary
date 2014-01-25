<?php
	// Includng configuration file
	include 'configs/config.php';
	
	$data = $_POST;
	if(empty($data['email']) && empty($data['password'])){
		echo "All * mark field are required.";
	} else {
		if(!validateEmail($data['email'])){
			echo "Please enter a valid email address.";
		}else{
			if($objUser->loginUser($data)){				
				header('Location: http://'.$_SERVER['HTTP_HOST'].'/buisinessdiary/myaccount.php/');
				exit;
			}else{
				echo "Invalid login details entered. Please try again later in sometime...";
			}
		}
	}

?>