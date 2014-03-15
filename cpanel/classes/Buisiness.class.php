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


	public function getBuisinessById($id){
		global $dbObj;
		$sql = "SELECT * FROM ".BLIST." WHERE list_id = ".$id;
		$res = $dbObj->query($sql);
		if($dbObj->num_rows($res) > 0){
			$res = $dbObj->fetch_array_assoc($res);
		}
		return $res;
	}


}
?>