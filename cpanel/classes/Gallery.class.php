<?php

/**
 * 
 * @author Gallery
 * @version 0.0.1
 * 
 */

class Gallery {
	
	/**
	 *
	 * @param null
	 * @return boolean
	 *
	 */
	public function getAllGalleries(){
		global $dbObj;
		$sql = "SELECT * FROM ".GALLERY." ;";
		$res = $dbObj->fetch_all_array($sql);		
		return $res; 
	}	
	
	/**
	 *
	 * @param null
	 * @return boolean
	 *
	 */
	public function getGallery($id){
		global $dbObj;
		$sql = "SELECT * FROM ".GALLERY." WHERE galleryId = $id";
		$res = $dbObj->query($sql);
		if($dbObj->num_rows($res) > 0){
			$res = $dbObj->fetch_array_assoc($res);
		}
		return $res;	
	} 
	
	/**
	 * 
	 * @param Array $data
	 * @return boolean
	 */
	public function addGallery($data){
		global $dbObj;
		$title = addslashes(trim($data['title']));
		$description = addslashes(nl2br(trim($data['description'])));
		$status = $data['status'];
		$sql = "INSERT INTO
					".GALLERY."
				SET
					gallery_title = '".$title."',
					gallery_description = '".$description."',					
					status = '".$status."',
					created_date = NOW()
				";
		if($dbObj->query($sql)){
			return true;
		} else {
			return false;
		}		
	}
	
	/**
	 *
	 * @param Array $data
	 * @return boolean
	 */
	public function updateGallery($data){
		global $dbObj;
		$title = addslashes(trim($data['title']));
		$description = addslashes(trim($data['description']));
		$status = $data['status'];
		$id = intval($data['id']);
		$sql = "UPDATE
					".GALLERY."
				SET
					gallery_title = '".$title."',
					gallery_description = '".$description."',
					status = '".$status."',
					updated_date = NOW()
				WHERE 
					galleryId = ".$id."					
				";
		if($dbObj->query($sql)){
			return true;
		} else {
			return false;
		}
	}
	
	/**
	 * Function is used to delete gallery data
	 * @param integer $id
	 * @return boolean
	 */
	public function deleteGallery($id){
		global $dbObj;		
		$sql = "DELETE FROM 
					".GALLERY."
				WHERE galleryId = ".$id ;		
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
	public function uploadImage($count){
		$handle = new Upload($_FILES['banner1']);
		if ($handle->uploaded) {
		   $handle->file_new_name_body   = 'image_resized';
	       $handle->image_resize         = true;
	       $handle->image_x              = 100;
	       $handle->image_ratio_y        = true;
	       $handle->process(GALLERYIMAGE);
	       if ($handle->processed) {
		          echo 'image resized';
		          $handle->clean();
		   } else {
		          echo 'error : ' . $handle->error;
		   }
		}
	}
	
}