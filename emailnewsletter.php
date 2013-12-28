<?php
	// Including configuration file
	include "configs/config.php";	
	$objNews = new Emailnewsletter();
	if($_POST){
		$data = $_POST;
		if(isset($data['name']) && isset($data['email']) && $data['name'] != 'Enter first name' && $data['email'] != 'Enter your email'){
			if($objNews->chkDuplSub($data['email'])){
				echo "You have already subscribe to newsletter.";
			} else {
				if($objNews->subscribe($data)){
					echo "Thank you for subscribing to newsletter.";
				} else {
					echo "Error subscribing to newsletter.";
				}	
			}
			
		} else {
			echo "All the fields are required.";
		}
	}

?>