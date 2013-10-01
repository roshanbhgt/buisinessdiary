<?php

/**
 * 
 * @author Gallery
 * @version 0.0.1
 * 
 */

class Gallery {
	
	/**
	 *
	 * @param null
	 * @return boolean
	 *
	 */
	public function getAllGalleries(){
		global $dbObj;
		$sql = "SELECT * FROM ".GALLERY." ;";
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
	public function addGallery($data){
		global $dbObj;
		$title = addslashes(trim($data['title']));
		$description = addslashes(nl2br(trim($data['description'])));
		$status = $data['status'];
		$sql = "INSERT INTO
					".GALLERY."
				SET
					gallery_title = '".$title."',
					gallery_description = '".$description."',					
					status = '".$status."',
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
	
}