<?php
	// Includng configuration file
	include 'configs/config.php';
	
	$data = $_POST;
	if(empty($data['email']) && empty($data['password'])){
        $response['success'] = 0;
        $response['message'] = "All * mark field are required.";
        echo json_encode($response);
	} else {
		if(!validateEmail($data['email'])){
            $response['success'] = 0;
            $response['message'] = "Please enter a valid email address.";
            echo json_encode($response);
		}else{
			if($objUser->loginUser($data)){				
				$response['success'] = 1;
                $response['url'] = 'http://'.$_SERVER['HTTP_HOST'].'/buisinessdiary/myaccount.php/';
                echo json_encode($response);
			}else{
                $response['success'] = 0;
                $response['message'] = "Invalid login details entered. Please try again later in sometime...";
                echo json_encode($response);
			}
		}
	}

?>