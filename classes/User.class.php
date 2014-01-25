<?php

/**
 * 
 * @author admin
 * @version 0.0.1
 * 
 */

class User {

	public function createUser($data){
		global $dbObj;
		$sql = "INSERT INTO
					".USER."
				SET
					firstname = '".$data['firstname']."',
					lastname = '".$data['lastname']."',
					gender = '".$data['gender']."',
					postcode = '".$data['postcode']."',
					email = '".$data['email']."',
					password = '".base64_encode($data['password'])."',
					roleId = '1',
					status = '0',
					created_date = NOW()
				";
		if($dbObj->query($sql)){
			return true;
		} else {
			return false;
		}
	}
	
	public function loginUser($data){
		global $dbObj;
		$sql = "SELECT * FROM ".USER." WHERE status = 1 AND email = '".$data['email']."' AND password = '".base64_encode($data['password'])."' LIMIT 1  ";
		
		$res = $dbObj->query($sql);
		if($dbObj->num_rows($res) > 0){
			$res = $dbObj->fetch_array_assoc($res);
			$_SESSION['userid'] = $res['userId'];
			$_SESSION['roleid'] = $res['roleId'];
			$_SESSION['firstname'] = $res['firstname'];
			$_SESSION['postcode'] = $res['postcode'];
			$sql = "UPDATE ".USER." set last_login_date = NOW() WHERE userid = '".$_SESSION['userid']."'  ";
			$dbObj->query($sql);
			return true;
		} else {
			return false;
		}
	}
	
	public function duplEmail($email){
		global $dbObj;
		$sql = "SELECT * FROM ".USER." WHERE email = '".$email."' ";
		$res = $dbObj->query($sql);
		if($dbObj->num_rows($res) > 0){
			return true;
		} else {
			return false;
		}
	}
	
	public function forgetPass(){
		global $dbObj;
		$sql = "SELECT * FROM ".USER." WHERE email = '".$email."' ";
		$res = $dbObj->query($sql);
		if($dbObj->num_rows($res) > 0){
			$res = $dbObj->fetch_array_assoc($res);
		}else{
			return false;
		}
	}
	
	
}