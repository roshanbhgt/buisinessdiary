<?php
class Emailnewsletter {
	
	public function subscribe($data){
		global $dbObj;
		$sql = "INSERT INTO
					".EMAILNEWSLETTER."
				SET
					name = '".$data['name']."',
					email = '".$data['email']."',					
					status = '1',
					created_date = NOW()
				";
					
		if($dbObj->query($sql)){
			return true;
		} else {
			return false;
		}		
	} 
	
	public function unsubscribe($email){
		global $dbObj;
		$sql = "UPDATE
					".EMAILNEWSLETTER."
				SET
					status = '0',
					updated_date = NOW()
				WHEER
					email = '".$email."'	
				";
			
		if($dbObj->query($sql)){
			return true;
		} else {
			return false;
		}
	}
	
	public function chkDuplSub($email){
		global $dbObj;
		global $dbObj;
		$sql = "SELECT * FROM 
					".EMAILNEWSLETTER."
				WHERE 
					email = '".$email."'
				";
		$res = $dbObj->query($sql);
		if($dbObj->num_rows($res) > 0){
			return true;
		} else {
			return false;
		}
	}
	
}
?>
