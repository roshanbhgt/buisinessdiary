<?php

/**
 *
 * @author admin
 * @version 0.0.1
 *
 */

class User {

	public function getUserTypes(){
		global $dbObj;
		$sql = "SELECT * FROM ".USERTYPE." ;";
		$res = $dbObj->fetch_all_array($sql);
		return $res;
	}

	public function addUserType($data){
		global $dbObj;
		$role = $data['role'];
		$sql = "INSERT INTO
					".USERTYPE."
				SET
					role = '".$role."',
					created_date = NOW()
				";
		if($dbObj->query($sql)){
			return true;
		} else {
			return false;
		}
	}

	public function addUser($data){
		global $dbObj;
		$role = 1;
		$sql = "INSERT INTO
					".USER."
				SET
					firstname = '".addslashes($data['firstname'])."',
					lastname = '".addslashes($data['lastname'])."',
					roleId = '".$role."',
					gender = '".$data['gender']."',
					email = '".$data['email']."',
					country = '".$data['country']."',
					state = '".$data['state']."',
					city = '".$data['city']."',
					postcode = '".$data['postcode']."',
					password = '".$data['password']."',
					status = '".$data['status']."',
					created_date = NOW()
				";
		if($dbObj->query($sql)){
			return true;
		} else {
			return false;
		}
	}

	public function deleteUserType($id){
		global $dbObj;
		$role = $data['role'];
		$sql = "DELETE FROM ".USERTYPE." WHERE roleId = ".$id;
		if($dbObj->query($sql)){
			return true;
		} else {
			return false;
		}
	}

	public function getUsers($pageId){
		if($pageId>0){
			$pageId = $pageId - 1;
		}
		global $dbObj;
        $sql = "SELECT us.*,ust.role FROM ".USER." AS us INNER JOIN ".USERTYPE." AS ust ON us.roleId = ust.roleId ";
		$count = $dbObj->num_rows($dbObj->query($sql));
        $pageNumCount = getPagination($count);
        if($pageId > 0 || $count > REC_PER_PAGE){
            $sql .= "LIMIT ".($pageId*REC_PER_PAGE).", ".REC_PER_PAGE;
        }
        $res = $dbObj->fetch_all_array($sql);
        return array("users"=>$res, "pagecount"=>$pageNumCount);
	}

}