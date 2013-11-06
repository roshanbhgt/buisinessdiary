<?php

/**
 * 
 * @author Webforms
 * @version 0.0.1
 * 
 */

class Webforms {
	
	/**	 
	 * 
	 */
	public function getContactListData(){
		global $dbObj;
		$sql = "SELECT * FROM ".CONTACTUS." ORDER BY created_date DESC ";
		$res = $dbObj->fetch_all_array($sql);
		return $res;
	}
	
	/**
	 *
	 */
	public function getContactData($id){
		global $dbObj;
		$sql = "SELECT * FROM ".CONTACTUS." WHERE contactId = ".$id;
		$res = $dbObj->query($sql);
		if($dbObj->num_rows($res) > 0){
			$res = $dbObj->fetch_array_assoc($res);
		}
		return $res;
	}
}