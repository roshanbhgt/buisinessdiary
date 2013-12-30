<?php

/**
 * 
 * @author Pages
 * @version 0.0.1
 * 
 */

class Pages {
	
	/**
	 * Function to get single page
	 * 
	 * @param string $id
	 * @return array
	 */
	public function getPage($identifer){
		global $dbObj;
		$sql = "SELECT * FROM ".PAGES." WHERE identifier = '".$identifer."' ";		
		$res = $dbObj->query($sql);
		if($dbObj->num_rows($res) > 0){
			$res = $dbObj->fetch_array_assoc($res);
		}
		return $res;
	}
	
}