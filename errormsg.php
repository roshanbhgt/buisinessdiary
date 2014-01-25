<?php

    // Including configuration file
    require_once ('configs/config.php');

    $objWebforms = new Webforms();

	$data = $_POST;
    if( $data['name'] != '' && $data['email'] != '' && $data['message'] != ''){

        $objWebforms->contactus($data);

		// multiple recipients
		$touser  = $data['email'];	
		$toadmin  = 'help@businessdiary.co.in';
		
		// subject
		$subjectuser = 'Thanks for contating support.';// subject
		$subjectadmin = 'New enquiry from '.$data['name'];
		
		// message
		$messageuser = '
			<html>
				<head></head>
				<body>		
					<table border="1" width="700px" bgcolor="#EFEFEF">
						<tr>
							<td><img alt="Buisiness Diary" src="http://localhost/buisinessdiary/design/images/logo.png" height="85" width="250"/></td>
						</tr>
						<tr>
							<td>
								<p> Dear '.$data['name'].', </p>
								<p> Thank You for contacting support team. </p>
								<p> We will be back to your quries very soon Or you can directly call to our support team on <b style="color:#990134">+91 844 657 6606</b>. </p>
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
		
		$messageadmin = '
		<html>
			<head></head>
		<body style="background-color:#EFEFEF;">
			<table border="1" width="700px" bgcolor="#FFF">
				<tr>
					<td><img alt="Business Diary" src="http://localhost/buisinessdiary/design/images/logo.png" height="85" width="250"/></td>
				</tr>
				<tr>
					<td>
						<p> New enqiry from '.$data['name'].', </p>
						<p>
							<table>
								<tr><td>Name : <td><td>'.$data['name'].'<td></tr>
								<tr><td>Phone : <td><td>'.$data['phone'].'<td></tr>
								<tr><td>Email : <td><td>'.$data['email'].'<td></tr>
								<tr><td>Message : <td><td>'.$data['message'].'<td></tr>
							</table>
						</p>
					</td>
				</tr>
				<tr>
					<td align="center">
						<strong>Thanks, Business Diary.</strong><br/>
						H/N 118A, Indira Nagar,
						Behind T. B. Ward Hospital,
						Nagpur, Maharashtra, India - 440003
						<br>M: help@buisinessdiary.in,
						P: 0712-2742728, F: 0712-2742728			
					</td>
				</tr>
			</table>
		</body>
		</html>
		';
		
		// Additional headers		
		$headers = 'From: Team <noreply@businessdiary.co.in>' . "\r\n";
		// $headers .= 'Cc: roshanbhgt@gmail.com' . "\r\n";
		$headers .= 'Bcc: Administrator <admin@businessdiary.co.in>' . "\r\n";
		
		// To send HTML mail, the Content-type header must be set
		$headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";
		$headers  .= 'MIME-Version: 1.0' . "\r\n";
		
		// Mail it
		if(mail($touser, $subjectuser, $messageuser, $headers)){
			if(mail($toadmin, $subjectadmin, $messageadmin, $headers)){
				echo 'Your message posted successfully.';
			} else{
				echo 'Unable to post the message.';
			}
		} else {
			echo 'Unable to post your message.';
		}
	} else {
		echo 'All the * mark fields are required.';
	}

?>