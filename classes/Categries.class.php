<?php
class Categries {
	
	public function getAllParentcat(){
		global $dbObj;
		$sql = "SELECT * FROM ".CATEGORIES." WHERE parentcat_id = 0  ;";
		$res = $dbObj->fetch_all_array($sql);
		return $res;
	}
	
}
?>
