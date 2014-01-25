<?php
	// Includng configuration file
	include 'configs/config.php';
	
	$objWebforms = new Webforms();
	$variable = array();
	
	$data  = $_POST;
	if(!empty($data)){
		if(empty($data['ui']) && empty($data['search']) && empty($data['info']) && 
			empty($data['name']) && empty($data['email']) && empty($data['message'])){
			$variable['message'] = "All the * mark fields required.";
		} else {
			if(!validateEmail($data['email'])){
				$variable['message'] = "Please enter a valid email address.";
			} else {
				$objWebforms->feedback($data);
				
				// multiple recipients
				$touser  = $data['email'];
				$toadmin  = 'feedback@businessdiary.co.in';
				
				// subject
				$subjectuser = 'Thanks for you feedback and suggestins. ';// subject
				$subjectadmin = 'New feedback from '.$data['name'];
				
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
				<p> Thank You for feedback and suggestions. </p>
				<p> We will work on you feedback and suggestions. Your suggestions and feedback are valuable and important to us. </p>
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
				<tr><td>I like the overall design of website. :- <td><td>'.$data['ui'].'<td></tr>
				<tr><td>Search on this website provides good result. :- <td><td>'.$data['search'].'<td></tr>
				<tr><td>Information on this site is relevant to my needs. :- <td><td>'.$data['info'].'<td></tr>
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
				$headers .= 'Bcc: Feedback <feedback@businessdiary.co.in>' . "\r\n";
				
				// To send HTML mail, the Content-type header must be set
				$headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";
				$headers  .= 'MIME-Version: 1.0' . "\r\n";
				
				// Mail it
				if(mail($touser, $subjectuser, $messageuser, $headers)){
					if(mail($toadmin, $subjectadmin, $messageadmin, $headers)){
						$variable['message'] = 'Your feedback posted successfully.';
					} else{
						$variable['message'] = 'Unable to post the message.';
					}
				} else {
					$variable['message'] = 'Unable to post your message.';
				}
				
			}		
		}
	}
	
	$smarty->assign('variable', $variable);
	$smarty->assign('content', $smarty->fetch('system/feedback.tpl'));
	$smarty->display('two-coloumn-left.html');

?>