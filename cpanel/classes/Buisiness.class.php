<?php

/**
 *
 * @author buisiness
 * @version 0.0.1
 *
 */

class Buisiness {

	public function getBuisinessList($pageId = 0){
		if($pageId>0){
			$pageId = $pageId - 1;
		}
		global $dbObj;
		$sql = "SELECT * FROM ".BLIST." ";

		$count = $dbObj->num_rows($dbObj->query($sql));
		$pageNumCount = getPagination($count);
		if($pageId > 0 || $count > REC_PER_PAGE){
			$sql .= "LIMIT ".($pageId*REC_PER_PAGE).", ".REC_PER_PAGE;
		}
		$res = $dbObj->fetch_all_array($sql);
		return array("businesslist"=>$res, "pagecount"=>$pageNumCount);
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

	public function updateBusiness($data){
		global $dbObj;
		$sql = 'UPDATE
					'.BLIST.'
				SET
					cat_id = '.$data['cat'].',
					title = "'.addslashes($data['title']).'",
					identifier = "'.generateSeoUrl(addslashes($data['title'])).'",
					owner_name = "'.addslashes($data['owner_name']).'",
					description = "'.addslashes($data['description']).'",
					address1 = "'.addslashes($data['address1']).'",
					address2 = "'.addslashes($data['address2']).'",
					city = "'.$data['city'].'",
					state = "'.$data['state'].'",
					country = "'.$data['country'].'",
					postcode = "'.$data['postcode'].'",
					phone = "'.$data['phone'].'",
					mobile = "'.$data['mobile'].'",
					fax = "'.$data['fax'].'",
					website = "'.$data['website'].'",
					status = "'.$data['status'].'",
					logo = "'.$data['logo'].'",
					updated_date = NOW()
				WHERE
					list_id = '.$data['id'].'
				';

		if($dbObj->query($sql)){
			return true;
		} else {
			return false;
		}
	}

	public function addBusiness($data){
		global $dbObj;
		$sql = 'INSERT INTO
					'.BLIST.'
				SET
					cat_id = '.$data['cat'].',
					title = "'.addslashes($data['title']).'",
					identifier = "'.generateSeoUrl(addslashes($data['title'])).'",
					owner_name = "'.addslashes($data['owner_name']).'",
					description = "'.addslashes($data['description']).'",
					address1 = "'.addslashes($data['address1']).'",
					address2 = "'.addslashes($data['address2']).'",
					city = "'.$data['city'].'",
					state = "'.$data['state'].'",
					country = "'.$data['country'].'",
					postcode = "'.$data['postcode'].'",
					phone = "'.$data['phone'].'",
					mobile = "'.$data['mobile'].'",
					fax = "'.$data['fax'].'",
					website = "'.$data['website'].'",
					status = "'.$data['status'].'",
					logo = "'.$data['logo'].'",
					created_date = NOW()
				';
		if($dbObj->query($sql)){
			return true;
		} else {
			return false;
		}
	}

	public function deleteBusiness($id){
		global $dbObj;
		$sql = 'DELETE FROM
					'.BLIST.'
				WHERE
					list_id = '.$id.'
				';
		if($dbObj->query($sql)){
			return true;
		} else {
			return false;
		}
	}
	
	public function markNew($id){
		global $dbObj;
		$sql = 'UPDATE
					'.BLIST.'
				SET 
					is_new = 1
				WHERE
					list_id = '.$id.'
				';
		if($dbObj->query($sql)){
			return true;
		} else {
			return false;
		}
	}
	
	public function unmarkNew($id){
		global $dbObj;
		$sql = 'UPDATE
					'.BLIST.'
				SET 
					is_new = 0
				WHERE
					list_id = '.$id.'
				';
		if($dbObj->query($sql)){
			return true;
		} else {
			return false;
		}
	}
	
	/**
	 *
	 *
	 */
	public function uploadImage($data = array()){
		$handle = new Upload($_FILES['logo']);
		if ($handle->uploaded) {
			$handle->file_auto_rename 	 = false;
			$handle->image_resize         = true;
			$handle->auto_create_dir 	 = true;
			$handle->dir_auto_chmod 		 = true;
			$handle->dir_chmod 			 = 0777;
			$handle->image_x              = 700;
			$handle->image_y              = 261;
			$handle->image_ratio_y        = false;
			$handle->process(BUSINESSIMAGE."/base");
			if (!$handle->processed) {
				echo "Unable to upload base image";
			}
	
			$handle->image_resize         = true;
			$handle->image_x              = 261;
			$handle->image_y              = 261;
			$handle->image_ratio_y        = false;
			$handle->process(BUSINESSIMAGE."/small");
			if (!$handle->processed) {
				echo "Unable to upload small image";
			}
			$handle->image_resize         = true;
			$handle->image_x              = 100;
			$handle->image_y              = 100;
			$handle->image_ratio_y        = false;
			$handle->process(BUSINESSIMAGE."/thumb");
			if (!$handle->processed) {
				echo "Unable to upload thumb image";
			}
			$handle->clean();
			$data['logo'] = $handle->file_dst_name;
		}
		return $data;
	}
}
?>