<?php

/**
 * 
 * @author buisiness
 * @version 0.0.1
 * 
 */

class Buisiness {
	
	public function getBuisinessList(){		
		global $dbObj;
		$sql = "SELECT * FROM ".BLIST." ;";
		$res = $dbObj->fetch_all_array($sql);				
		return $res;	
	}
	
}
?>