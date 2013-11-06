<?php

/**
 * 
 * @author categries
 * @version 0.0.1
 * 
 */

class Categries {
	
	/**
	 * 
	 * 
	 */
	public function getAllParentcat(){
		global $dbObj;
		$sql = "SELECT * FROM ".CATEGORIES." WHERE parentcat_id = 0  ;";
		$res = $dbObj->fetch_all_array($sql);				
		return $res;
	} 
	
	/**
	 * 
	 * 
	 */
	public function getAllSubcat(){
		global $dbObj;
		$sql = "SELECT * FROM ".CATEGORIES." WHERE parentcat_id != 0;";
		$res = $dbObj->fetch_all_array($sql);		
		return $res;
	}
	
	/**
	 *
	 *
	 */
	public function getParentcat($id){
		global $dbObj;
		$sql = "SELECT * FROM ".CATEGORIES." WHERE cat_id = ".$id;
		$res = $dbObj->query($sql);
		if($dbObj->num_rows($res) > 0){
			$res = $dbObj->fetch_array_assoc($res);
		}
		return $res;
	}
	
	/**
	 *
	 *
	 */
	public function getSubcat($id){
		global $dbObj;
		$sql = "SELECT * FROM ".CATEGORIES." WHERE cat_id = ".$id;
		$res = $dbObj->query($sql);
		if($dbObj->num_rows($res) > 0){
			$res = $dbObj->fetch_array_assoc($res);
		}
		return $res;
	}
	
	/**
	 * 
	 * 
	 */
	public function addCategory($data){
		global $dbObj;
		$title = addslashes(trim($data['title']));
		$description = addslashes(nl2br(trim($data['description'])));
		$banner = $data['banner'];
		$status = $data['status'];
		$sql = "INSERT INTO
					".CATEGORIES."
				SET
					title = '".$title."',
					description = '".$description."',					
					parentcat_id = ".$data['parent_id'].",					
					banner = '".$banner."',
					status = '".$status."',
					created_date = NOW()
				";
		if($dbObj->query($sql)){
			return true;
		} else {
			return false;
		}
	}
	
	public function updateCategory($data){
		global $dbObj;		
		$title = addslashes(trim($data['title']));
		$description = addslashes(nl2br(trim($data['description'])));
		$banner = $data['banner'];
		$status = $data['status'];
		$parentCatId = $data['parent_id'];
		$id = $data['id'];
		$sql = "UPDATE
					".CATEGORIES."
				SET
					title = '".$title."',
					description = '".$description."',
					parentcat_id = ".$parentCatId.",";
		if ($banner != ''){					
			$sql .=		"banner = '".$banner."',";
		}
		$sql .=  "  status = '".$status."',
					update_date = NOW()
				WHERE
					cat_id = ".$id ;
		if($dbObj->query($sql)){
			return true;
		} else {
			return false;
		}
	}
	
	public function getDeletecat($id){
		global $dbObj;
		$sql = "DELETE FROM 
					".CATEGORIES."
				WHERE
					cat_id = ".$id ;
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
		$handle = new Upload($_FILES['banner']);
		if ($handle->uploaded) {
			$handle->file_auto_rename 	 = false;
			$handle->image_resize         = true;
			$handle->auto_create_dir 	 = true;
			$handle->dir_auto_chmod 		 = true;
			$handle->dir_chmod 			 = 0777;
			$handle->image_x              = 700;
			$handle->image_y              = 261;
			$handle->image_ratio_y        = false;
			$handle->process(CATEGORYIMAGE."/base");
			if (!$handle->processed) {
				echo "Unable to upload base image";
			}
		
			$handle->image_resize         = true;
			$handle->image_x              = 261;
			$handle->image_y              = 261;
			$handle->image_ratio_y        = false;
			$handle->process(CATEGORYIMAGE."/small");
			if (!$handle->processed) {
				echo "Unable to upload small image";
			}
			$handle->image_resize         = true;
			$handle->image_x              = 100;
			$handle->image_y              = 100;
			$handle->image_ratio_y        = false;
			$handle->process(CATEGORYIMAGE."/thumb");
			if (!$handle->processed) {
				echo "Unable to upload thumb image";
			}
			$handle->clean();
			$data['banner'] = $handle->file_dst_name;
		}		
		return $data;
	}
}