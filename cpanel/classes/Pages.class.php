<?php

/**
 * 
 * @author Pages
 * @version 0.0.1
 * 
 */

class Pages {
	
	/**
	 * Function to get all pages
	 * 
	 * @return array
	 */
	public function getAllPages(){
		global $dbObj;
		$sql = "SELECT * FROM ".PAGES." ;";
		$res = $dbObj->fetch_all_array($sql);				
		return $res;
	}
	
	/**
	 * Function to check whether page is already exist or not 
	 *  
	 * @param string $title
	 * @return boolean
	 */
	public function isDuplicatePage($title){
		global $dbObj;
		$sql = "SELECT * FROM ".PAGES." WHERE title = '".$title."' ;";
		$res = $dbObj->query($sql);
		if($dbObj->num_rows($res) > 0){
			return true; 
		} else { 
			return false;
		}
	}
	
	/**
	 * Function to get single page
	 * 
	 * @param integer $id
	 * @return array
	 */
	public function getPage($id){
		global $dbObj;
		$sql = "SELECT * FROM ".PAGES." WHERE pageId = ".$id;		
		$res = $dbObj->query($sql);
		if($dbObj->num_rows($res) > 0){
			$res = $dbObj->fetch_array_assoc($res);
		}
		return $res;
	}
	
	
	public function addPage($data){
		global $dbObj;
		$title = addslashes(trim($data['title']));
		$identifier = generateSeoUrl($title);
		$description = addslashes(trim($data['description']));		
		$status = $data['status'];
		$sql = "INSERT INTO
					".PAGES."
				SET
					title = '".$title."',
					identifier = '".$identifier."',
					description = '".$description."',					
					status = '".$status."',
					created_date = NOW()
				";
		if($dbObj->query($sql)){
			return true;
		} else {
			return false;
		}
	}
	
	public function updatePage($data){
		global $dbObj;
		$title = addslashes(trim($data['title']));
		$description = addslashes(trim($data['description']));
		$identifier = generateSeoUrl($title);
		$status = $data['status'];
		$id = intval($data['id']);
		$sql = "UPDATE
					".PAGES."
				SET
					title = '".$title."',
					identifier = '".$identifier."',
					description = '".$description."',
					status = '".$status."',
					update_date = NOW()
				WHERE
					pageId = ".$id					
				;
		if($dbObj->query($sql)){
			return true;
		} else {
			return false;
		}
	}
	
	public function deletePage($id){
		global $dbObj;
		$sql = "DELETE FROM 
					".PAGES."
				WHERE
					pageId = ".$id ;
		if($dbObj->query($sql)){
			return true;
		} else {
			return false;
		}
	}	
}