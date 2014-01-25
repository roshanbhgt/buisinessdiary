<?php
	// Includng configuration file
	include 'configs/config.php';
	
	$data = $_POST;
	if( empty($data['firstname'])&&empty($data['lastname'])&&empty($data['email'])
		&&empty($data['password'])&&empty($data['postcode'])
		&&empty($data['gender'])&&empty($data['confpass']) ){
		echo "All * mark field are required.";
	} else {
		if($data['password'] != $data['confpass'] ){
			echo "Password and confirm password not matching together.";
		}elseif(!validateEmail($data['email'])){
			echo "Please enter a valid email address."; 
		}elseif($objUser->duplEmail($data['email'])){
			echo "User with the emailid already exist.";
		}else{
			if($objUser->createUser($data)){
				echo "Thank you for creating an account. Please confirm the account by clicking activation link send on email.";
			}else{
				echo "We are unable to create an account for you at this movement. Please try again later in sometime...";
			}
		}
	}
?>