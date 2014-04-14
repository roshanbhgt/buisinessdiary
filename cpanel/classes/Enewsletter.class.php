<?php
/**
 * Created by PhpStorm.
 * User: Roshan
 * Date: 2/2/14
 * Time: 9:52 PM
 */

class Enewsletter {

    /**
     * @param $pageId
     * @return newsletter
     *
     */
    public function getNewsletterEmail($pageId){
        if($pageId > 0){
            $pageId = $pageId - 1;
        }
        global $dbObj;
        $sql = "SELECT * FROM ".EMAILNEWSLETTER." ORDER BY created_date DESC ";
        $count = $dbObj->num_rows($dbObj->query($sql));
        $pageNumCount = getPagination($count);
        if($pageId > 0 || $count > REC_PER_PAGE){
            $sql .= "LIMIT ".($pageId*REC_PER_PAGE).", ".REC_PER_PAGE;
        }
        $res = $dbObj->fetch_all_array($sql);
        return array("newslemail"=>$res, "pagecount"=>$pageNumCount);
    }

    public function getNewsletterEmailById($id){
    	global $dbObj;
    	$sql = "SELECT * FROM ".EMAILNEWSLETTER." WHERE subscriberId = ".$id;
    	$res = $dbObj->query($sql);
    	if($dbObj->num_rows($res) > 0){
    		$res = $dbObj->fetch_array_assoc($res);
    	}
    	return $res;
    }

    public function updateNewsletterEmail($data){
    	global $dbObj;
    	$status = $data['status'];
    	$sql = "UPDATE
    				".EMAILNEWSLETTER."
    			SET
    				name = '".$data['name']."',
    				email = '".$data['email']."',
    				status = ".$status.",
    				updated_date = NOW()
    			WHERE
    				subscriberId = ".$data['id'];
    	if ($dbObj->query($sql)) {
    		return true;
    	} else {
    		return false;
    	}
    }

    public function addNewsletterEmail($data){
    	global $dbObj;
    	$status = $data['status'];
    	$sql = "INSERT INTO
    				".EMAILNEWSLETTER."
    			SET
			    	name = '".$data['name']."',
			    	email = '".$data['email']."',
			    	status = ".$status.",
			    	created_date = NOW()";
    	if ($dbObj->query($sql)) {
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

    public function updateNewsletterByEmail($email){
    	global $dbObj;
    	$status = $data['status'];
    	$sql = "UPDATE
			    	".EMAILNEWSLETTER."
			    SET
			    	status = 1,
			    	updated_date = NOW()
			    WHERE
			    	email = ".email;
    	if ($dbObj->query($sql)) {
    		return true;
    	} else {
    		return false;
    	}
    }
}