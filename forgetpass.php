<?php
	// Includng configuration file
	include 'configs/config.php';
	
	$data = $_POST;
	if(count($_POST)>0){
		if($data['email'] != '' && validateEmail($data['email'])){
			$res = $objUser->forgetPass($data['email']);
			if(count($res) > 0){
				$to = trim($data['email']);
				$from = 'help@businessdiary.co.in';
				$subject = 'BDiary : Login details for your account';
				$message = '
					<html>
						<head></head>
						<body>		
							<table border="0" width="700px" bgcolor="#EFEFEF">
								<tr>
									<td><img alt="Buisiness Diary" src="http://localhost/buisinessdiary/design/images/logo.png" height="85" width="250"/></td>
								</tr>
								<tr>
									<td>
										<p> Dear '.$res['firstname'].', </p>
										<p> Thank You for contacting us. </p>
										<p> Please find you login details below or if details doesn\'t work you can directly call to our support team on <b style="color:#990134">+91 844 657 6606</b>. </p>
										<p>
											Username : '.$res['email'].'<br/>
											Password : '.base64_decode($res['password']).'<br/>
										</p>
										<p> 
											Thanks & Regards<br/>
											Business Diary
										</p>
									</td>
								</tr>
								<tr>
									<td align="center">
										<strong>Thanks, Business Diary.</strong><br/>					    	
						H/N 118A, Indira Nagar,
						Behind T. B. Ward Hospital,
						Nagpur, Maharashtra, India - 440003
						<br>M: help@businessdiary.co.in,
						P: 0712-2742728, F: 0712-2742728
										
									</td>
								</tr>
							</table>
						</body>
					</html>
				';
				
				if (!$mail->send($from,$to,$subject,$message)) {
					echo "Unable to deliver your details.";
					exit;
				} else {
					echo "Please check inbox for login details and try login.";
					exit;
				}
			}else{
				echo 'Unable to be find account associated with email';
				exit;
			}
		}else{
			echo 'All * mark fields are required.';
			exit;
		}
	}
	
	$smarty->assign('content', $smarty->fetch('user/forgetpass.tpl'));
	$smarty->display('one-coloumn.html');

?>