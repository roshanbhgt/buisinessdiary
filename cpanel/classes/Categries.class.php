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
	public function getParentcat($id){
		global $dbObj;
		$sql = "SELECT * FROM ".CATEGORIES." WHERE cat_id = ".$id;
		$res = $dbObj->query($sql);
		if($dbObj->num_rows($res) > 0){
			$res = $dbObj->fetch_array_assoc($res);
		}
		return $res;
	}
	
	/**
	 *
	 *
	 */
	public function getSubcat($id){
		global $dbObj;
		$sql = "SELECT * FROM ".CATEGORIES." WHERE cat_id = ".$id;
		$res = $dbObj->query($sql);
		if($dbObj->num_rows($res) > 0){
			$res = $dbObj->fetch_array_assoc($res);
		}
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
					parentcat_id = ".$data['parent_id'].",					
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
	
	public function updateCategory($data){
		global $dbObj;
		$title = addslashes(trim($data['title']));
		$description = addslashes(nl2br(trim($data['description'])));
		$banner = $data['banner'];
		$status = $data['status'];
		$parentCatId = $data['parent_id'];
		$id = $data['id'];
		$sql = "UPDATE
					".CATEGORIES."
				SET
					title = '".$title."',
					description = '".$description."',
					parentcat_id = ".$parentCatId.",
					banner = '".$banner."',
					status = '".$status."',
					update_date = NOW()
				WHERE
					cat_id = ".$id ;
		if($dbObj->query($sql)){
			return true;
		} else {
			return false;
		}
	}
	
	public function getDeletecat($id){
		global $dbObj;
		$sql = "DELETE FROM 
					".CATEGORIES."
				WHERE
					cat_id = ".$id ;
		if($dbObj->query($sql)){
			return true;
		} else {
			return false;
		}
	}	
}