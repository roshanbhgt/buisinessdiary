<?php
/**
 * 
 * @author admin
 * @version 0.0.1
 * 
 */

class Admin {
	
	/**
	 *
	 * @param null
	 * @return boolean
	 *
	 */
	public function getAllAcounts(){
		global $dbObj;
		$sql = "SELECT * FROM ".ADMIN." ;";
		$res = $dbObj->fetch_all_array($sql);		
		return $res; 
	}	
	
	/**
	 *
	 * @param null
	 * @return boolean
	 *
	 */
	public function getAcount($id){
		global $dbObj;
		$sql = "SELECT * FROM ".ADMIN." WHERE adminId = $id";
		$res = $dbObj->query($sql);
		if($dbObj->num_rows($res) > 0){
			$res = $dbObj->fetch_array_assoc($res);
		}
		return $res;	
	} 
	
	/**
	 * 
	 * @param Array $data
	 * @return boolean
	 */
	public function addUser($data = array()){
		global $dbObj;
		$firstname = $data['firstname'];
		$lastname = $data['lastname'];
		$email = $data['email'];		
		$username = $data['username'];
		$password = $data['password'];
		$sql = "INSERT INTO
					".ADMIN."
				SET
					firstname = '".$firstname."',
					lastname = '".$lastname."',
					email = '".$email."',
					username = '".$username."',
					password = '".base64_encode($password)."',
					usertype = 'administrator',
					status = 'active',
					created_date = NOW()
				";
		if($dbObj->query($sql)){
			return true;
		} else {
			return false;
		}		
	}
	
	/**
	 *
	 * @param Array $data
	 * @return boolean
	 */
	public function updateAcount($data = array()){
		global $dbObj;
		$firstname = $data['firstname'];
		$lastname = $data['lastname'];
		$email = $data['email'];
		$username = $data['username'];
		// $password = $data['password'];
		$sql = "UPDATE
					".ADMIN."
				SET
					firstname = '".$firstname."',
					lastname = '".$lastname."',
					email = '".$email."',
					username = '".$username."',					
					updated_date = NOW()
				WHERE 
					adminId = ".$data['id'];
		if($dbObj->query($sql)){
			return true;
		} else {
			return false;
		}
	}
	
	/**
	 * 
	 * @param $username
	 * @param $password
	 * @return boolean
	 * 
	 */
	public function login($username,$password){
		global $dbObj; 
		$sql = "select * from ".ADMIN." where username = '".$username."' LIMIT 1; ";
		$res = $dbObj->query($sql);
		if($dbObj->num_rows($res) > 0){
			$res = $dbObj->fetch_array_assoc($res);			
			if($res['username'] == $username && $res['password'] == base64_encode($password) ){
				$_SESSION['adminId'] = $res['adminId'];
				$_SESSION['admin'] = $res['username'];
				$_SESSION['adminType'] = $res['usertype'];
				return true;
			} else {
				return false;
			}
		} else {
			return false;
		}
	}
	
	/**
	 * 
	 * @param $username
	 * @return boolean
	 * 
	 */
	public function getPassword($username){
		global $dbObj;
		$sql = "SELECT * FROM ".ADMIN." WHERE username = '".$username."' LIMIT 1; ";
		$res = $dbObj->query($sql);
		if($dbObj->num_rows($res) > 0){
			$res = $dbObj->fetch_array_assoc($res);
			$to = $res['email'];
			$username = $res['username'];
			$password = base64_decode($res['password']); 
			$subject = "New password";
			$body = "<table>
						<tr><td>Please find below your login credentials...</td></tr>
						<tr><td>Username : ".$username."<td></tr>
						<tr><td>Password : ".$password."<td></tr>
					</table>";		
			$this->sendMail($to, $subject, $body);
			return true;
		} else {
			return false;
		}
	}
	
	/**
	 * 
	 * @param varchar $email
	 * @return boolean
	 */
	function isDuplicateEmail($email){
		global $dbObj;
		$sql = "SELECT * FROM ".ADMIN." WHERE email = '".$email."' LIMIT 1 ";
		$res = $dbObj->query($sql);
		if($dbObj->num_rows($res) > 0){
			return true;
		} else {
			return false;
		}
	}
	
	/**
	 *
	 * @param varchar $email
	 * @return boolean
	 */
	function isDuplicateUsername($username){
		global $dbObj;
		$sql = "SELECT * FROM ".ADMIN." WHERE username = '".$username."' LIMIT 1 ";
		$res = $dbObj->query($sql);
		if($dbObj->num_rows($res) > 0){
			return true;
		} else {
			return false;
		}
	}
	
	/**
	 * 
	 * @param Varchar $to
	 * @param Varchar $subject
	 * @param Text $message
	 * @return boolean
	 */
	function sendMail($to,$subject,$message){
		
		// Setting message headers
		$headers = "MIME-Version: 1.0";
		$headers .= "Content-Type: text/html; charset='UTF-8';";
		$headers .= "Content-Transfer-Encoding: 7bit";
		$headers .= "Date: " . date('r', $_SERVER['REQUEST_TIME']);
		$headers .= "Message-ID: <" . $_SERVER['REQUEST_TIME'] . md5($_SERVER['REQUEST_TIME']) . "@" . $_SERVER['SERVER_NAME'] . ">";
		$headers .= "From: " . $from;
		$headers .= "Reply-To: " . $from;
		$headers .= "Return-Path: " . $from;
		$headers .= "X-Mailer: PHP v" . phpversion();
		$headers .= "X-Originating-IP: " . $_SERVER['SERVER_ADDR'];
		
		$ok = @mail($to, $subject, $message, $headers);
		
		if($ok){
			return true;	
		}
	}
	
}