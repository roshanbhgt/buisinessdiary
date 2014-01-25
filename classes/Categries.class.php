<?php
class Categries {
	
	public function getAllParentcat(){
		global $dbObj;
		$sql = "SELECT * FROM ".CATEGORIES." WHERE parentcat_id = 0  ;";
		$res = $dbObj->fetch_all_array($sql);
		return $res;
	}
	
	public function getCategoryById($id){
		global $dbObj;
		$sql = "SELECT * FROM ".CATEGORIES." WHERE cat_Id = $id  ;";
		$res = $dbObj->fetch_all_array($sql);
		$res = $dbObj->query($sql);
		if($dbObj->num_rows($res) > 0){
			$res = $dbObj->fetch_array_assoc($res);
			return $res;
		}else{
			return false;
		}
	}
	
	public function getCategoryByIdentifier($identifier){
		global $dbObj;
		$sql = "SELECT * FROM ".CATEGORIES." WHERE identifier = '".$identifier."'  ;";
		$res = $dbObj->query($sql);
		if($dbObj->num_rows($res) > 0){
			$res = $dbObj->fetch_array_assoc($res);
			return $res;
		}else{
			return false;
		}
	}
	
}
?>
