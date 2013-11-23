<?php

/**
 * 
 * @author admin
 * @version 0.0.1
 * 
 */

class User {

	public function getUserTypes(){
		global $dbObj;
		$sql = "SELECT * FROM ".USERTYPE." ;";
		$res = $dbObj->fetch_all_array($sql);				
		return $res; 
	}
	
	public function addUserType($data){
		global $dbObj;
		$role = $data['role'];		
		$sql = "INSERT INTO
					".USERTYPE."
				SET
					role = '".$role."',															
					created_date = NOW()
				";
		if($dbObj->query($sql)){
			return true;
		} else {
			return false;
		}
	}
	
	public function deleteUserType($id){
		global $dbObj;
		$role = $data['role'];		
		$sql = "DELETE FROM ".USERTYPE." WHERE roleId = ".$id;
		if($dbObj->query($sql)){
			return true;
		} else {
			return false;
		}
	}
	
}