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
	public function getContactListData($pageId){
		if($pageId > 0){
			$pageId = $pageId - 1;
		}
		global $dbObj;
		$sql = "SELECT * FROM ".CONTACTUS." ORDER BY created_date DESC ";
		$count = $dbObj->num_rows($dbObj->query($sql));
		$pageNumCount = getPagination($count);
		if($pageId > 0 || $count > REC_PER_PAGE){
			$sql .= "LIMIT ".($pageId*REC_PER_PAGE).", ".REC_PER_PAGE;
		}
		$res = $dbObj->fetch_all_array($sql);
		return array("clist"=>$res, "pagecount"=>$pageNumCount);
	}
	
	/**
	 *
	 */
	public function getFeedbackListData($pageId){
		if($pageId > 0){
			$pageId = $pageId - 1;
		}
		global $dbObj;
		$sql = "SELECT * FROM ".FEEDBACK." ORDER BY created_date DESC ";
		$count = $dbObj->num_rows($dbObj->query($sql));
		$pageNumCount = getPagination($count);
		if($pageId > 0 || $count > REC_PER_PAGE){
			$sql .= "LIMIT ".($pageId*REC_PER_PAGE).", ".REC_PER_PAGE;
		}
		$res = $dbObj->fetch_all_array($sql);
		return array("flist"=>$res, "pagecount"=>$pageNumCount);
	}

    /**
     *
     */
    public function getRequestListData($pageId){
        if($pageId > 0){
            $pageId = $pageId - 1;
        }
        global $dbObj;
        $sql = "SELECT bc.title AS category, ql.*  FROM ".QUIKLIST." AS ql INNER JOIN ".CATEGORIES." AS bc ON ql.cat_id = bc.cat_id ORDER BY created_date DESC ";

        $count = $dbObj->num_rows($dbObj->query($sql));
        $pageNumCount = getPagination($count);
        if($pageId > 0 || $count > REC_PER_PAGE){
            $sql .= "LIMIT ".($pageId*REC_PER_PAGE).", ".REC_PER_PAGE;
        }
        $res = $dbObj->fetch_all_array($sql);
        return array("rlist"=>$res, "pagecount"=>$pageNumCount);
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