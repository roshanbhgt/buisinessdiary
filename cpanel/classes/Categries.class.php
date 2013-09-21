<?php

/**
 * 
 * @author categries
 * @version 0.0.1
 * 
 */

class Categries {
	
	/**
	 * 
	 * 
	 */
	public function getAllParentcat(){
		global $dbObj;
		$sql = "SELECT * FROM ".CATEGORIES." WHERE parentcat_id = 0  ;";
		$res = $dbObj->fetch_all_array($sql);				
		return $res;
	} 
	
	/**
	 * 
	 * 
	 */
	public function getAllSubcat(){
		global $dbObj;
		$sql = "SELECT * FROM ".CATEGORIES." WHERE parentcat_id != 0;";
		$res = $dbObj->fetch_all_array($sql);
		return $res;
	}
	
	/**
	 * 
	 * 
	 */
	public function addCategory($data){
		global $dbObj;
		$title = addslashes(trim($data['title']));
		$description = addslashes(nl2br(trim($data['description'])));
		$banner = $data['banner'];
		$status = $data['status'];
		$sql = "INSERT INTO
					".CATEGORIES."
				SET
					title = '".$title."',
					description = '".$description."',					
					parentcat_id = 0 ,					
					banner = '".$banner."',
					status = '".$status."',
					created_date = NOW()
				";
		if($dbObj->query($sql)){
			return true;
		} else {
			return false;
		}
	}
	
}