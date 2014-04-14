<?php
	// Including configuration file
	include "configs/config.php";	
	$objReview = new Review();
	
	if($_POST){
		$data = $_POST;
		if(isset($data['userid']) && isset($data['busid']) 
		&& $data['rating'] != '' && $data['message'] != ''){
			if ($objReview->submitReview($data)) {
				echo "Thank you for submitting review.";
			} else {
				echo "Error subscribing to review.";
			}	
		} else {
			echo "All the fields are required.";
		}
	}

?>