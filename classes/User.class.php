<?php

/**
 *
 * @author admin
 * @version 0.0.1
 *
 */

class User {

	public function createUser($data){
		global $dbObj;
		$sql = "INSERT INTO
					".USER."
				SET
					firstname = '".$data['firstname']."',
					lastname = '".$data['lastname']."',
					gender = '".$data['gender']."',
					postcode = '".$data['postcode']."',
					email = '".$data['email']."',
					password = '".base64_encode($data['password'])."',
					roleId = '1',
					status = '0',
					created_date = NOW()
				";
		if($dbObj->query($sql)){
			return true;
		} else {
			return false;
		}
	}

	public function loginUser($data){
		global $dbObj;
		$sql = "SELECT * FROM ".USER." WHERE status = 1 AND email = '".$data['email']."' AND password = '".base64_encode($data['password'])."' LIMIT 1  ";

		$res = $dbObj->query($sql);
		if($dbObj->num_rows($res) > 0){
			$res = $dbObj->fetch_array_assoc($res);
			$_SESSION['userid'] = $res['userId'];
			$_SESSION['roleid'] = $res['roleId'];
			$_SESSION['email'] = $res['email'];
			$_SESSION['firstname'] = $res['firstname'];
			$_SESSION['postcode'] = $res['postcode'];
			$sql = "UPDATE ".USER." set last_login_date = NOW() WHERE userid = '".$_SESSION['userid']."'  ";
			$dbObj->query($sql);
			return true;
		} else {
			return false;
		}
	}

	public function duplEmail($email){
		global $dbObj;
		$sql = "SELECT * FROM ".USER." WHERE email = '".$email."' ";
		$res = $dbObj->query($sql);
		if($dbObj->num_rows($res) > 0){
			return true;
		} else {
			return false;
		}
	}

	public function forgetPass($email){
		global $dbObj;
		$sql = "SELECT * FROM ".USER." WHERE email = '".$email."' ";
		$res = $dbObj->query($sql);
		if($dbObj->num_rows($res) > 0){
			$res = $dbObj->fetch_array_assoc($res);
			return $res;
		}else{
			return null;
		}
	}

	public function getUserInformation(){
		global $dbObj;
		$sql = "SELECT * FROM ".USER." WHERE userId = '".$_SESSION['userid']."' ";
		$res = $dbObj->query($sql);
		if($dbObj->num_rows($res) > 0){
			$res = $dbObj->fetch_array_assoc($res);
			return $res;
		}else{
			return false;
		}
	}

    public function updateUserInfo($data){
        global $dbObj;
        $sql = "UPDATE
                    ".USER."
                SET
                    firstname = '".$data['firstname']."',
                    lastname = '".$data['lastname']."',
                    email = '".$data['email']."',
                    updated_date = NOW() ";

        if($data['change_password'] == 1){
            $sql .= ", password = '".base64_encode($data['new_pass'])."' ";
        }

        $sql .= " WHERE userId = '".$_SESSION['userid']."' ";

        if($dbObj->query($sql)){
            return true;
        }else{
            return false;
        }
    }

	public function getNewsletter($email){
		global $dbObj;
		$sql = "SELECT * FROM ".EMAILNEWSLETTER." WHERE email = '".$email."' ";
		$res = $dbObj->query($sql);
		if($dbObj->num_rows($res) > 0){
			return true;
		}else{
			return false;
		}
	}

    public function getUsersWishlist(){
        global $dbObj;
        $sql = "SELECT * FROM ".USERWISHLIST." INNER JOIN ".BLIST." WHERE user_id = '".$_SESSION['userid']."' AND buis_id = list_id ";
        $res = $dbObj->fetch_all_array($sql);;
        if(count($res) > 0){
            return $res;
        }else{
            return null;
        }
    }

    public function getUsersFavourite(){
        global $dbObj;
        $sql = "SELECT * FROM ".USERFAVOURITE." INNER JOIN ".BLIST." WHERE user_id = '".$_SESSION['userid']."' AND buis_id = list_id ";
        $res = $dbObj->fetch_all_array($sql);;
        if(count($res) > 0){
            return $res;
        }else{
            return null;
        }
    }

    public function inWishlist($id){
        global $dbObj;
        $sql = "SELECT * FROM ".USERWISHLIST." WHERE buis_id = '".$id."' AND user_id  = '".$_SESSION['userid']."' ";
        $res = $dbObj->query($sql);
        if($dbObj->num_rows($res) > 0){
            return true;
        }else{
            return false;
        }
    }

    public function isFavourite($id){
        global $dbObj;
        $sql = "SELECT * FROM ".USERFAVOURITE." WHERE buis_id = '".$id."' AND user_id  = '".$_SESSION['userid']."' ";
        $res = $dbObj->query($sql);
        if($dbObj->num_rows($res) > 0){
            return true;
        }else{
            return false;
        }
    }

    public function addToFavourite($id){
        global $dbObj;
        $sql = "INSERT INTO
                    ".USERFAVOURITE."
                SET
                    buis_id = '".$id."',
                    user_id  = '".$_SESSION['userid']."',
                    added_date = NOW() ";
        if($dbObj->query($sql)){
            return true;
        }else{
            return false;
        }
    }

    public function addToWishlist($id){
        global $dbObj;
        $sql = "INSERT INTO
                    ".USERWISHLIST."
                SET
                    buis_id = '".$id."',
                    user_id  = '".$_SESSION['userid']."',
                    added_date = NOW() ";
        if($dbObj->query($sql)){
            return true;
        }else{
            return false;
        }
    }

    public function removeFromFav($id){
        global $dbObj;
        $sql = "DELETE FROM ".USERFAVOURITE." WHERE id = '".$id."' ";
        if($dbObj->query($sql)){
            return true;
        }else{
            return false;
        }
    }

    public function removeFromWishlist($id){
        global $dbObj;
        $sql = "DELETE FROM ".USERWISHLIST." WHERE id = '".$id."' ";
        if($dbObj->query($sql)){
            return true;
        }else{
            return false;
        }
    }
}