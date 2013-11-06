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
			$galleryId = $dbObj->last_id();
			if($data['bcount']>0){					
				for ($i=1;$i <= $data['bcount'];$i++){
					$banner = $data['banner'.$i];
					$sql = "INSERT INTO
								".GALLERYIMAGES."
							SET
								banner = '".$banner."',								
								galleryId = '".$galleryId."',
								created_date = NOW()
							";
					$dbObj->query($sql);
				}
			}
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
			
			$sql = "SELECT banner FROM
						".GALLERYIMAGES."
					WHERE galleryId = ".$id." LIMIT 1" ;			
			$res = $dbObj->fetch_all_array($sql);
			
			$sql = "DELETE FROM
						".GALLERYIMAGES."
					WHERE galleryId = ".$id ;
			$dbObj->query($sql);
			
			foreach ($res as $val){
				unlink(GALLERYIMAGE."/base/".$val);
				unlink(GALLERYIMAGE."/small/".$val);
				unlink(GALLERYIMAGE."/thumb/".$val);
			}
			
			return true;
		} else {
			return false;
		} 			
	}
	
	public function getGalleryImages($id){
		global $dbObj;
		$sql = "SELECT * FROM
					".GALLERYIMAGES."
				WHERE galleryId = ".$id ;
		$res = $dbObj->fetch_all_array($sql);		
		return $res;
	} 
	
	/**
	 * 
	 * 
	 * 
	 */
	public function deleteGalImg($id){
		global $dbObj;
		$sql = "SELECT banner FROM
					".GALLERYIMAGES."
				WHERE galleryImageId = ".$id." LIMIT 1" ;
		$res = $dbObj->query($sql);
		$res = $dbObj->fetch_array_assoc($res);		
		if($dbObj->query($sql)){			
			$sql = "DELETE FROM
						".GALLERYIMAGES."
					WHERE galleryImageId = ".$id ;
			$dbObj->query($sql);
			unlink(GALLERYIMAGE."/base/".$res['banner']);
			unlink(GALLERYIMAGE."/small/".$res['banner']);
			unlink(GALLERYIMAGE."/thumb/".$res['banner']);
			return true;
		} else {
			return false;
		}
	}
	
	
	/**
	 * 
	 * 
	 */
	public function uploadImage($count, $data = array()){
		
		for ($i=1;$i<=$count;$i++){
			$handle = new Upload($_FILES['banner'.$i]);
			if ($handle->uploaded) {
			   $handle->file_auto_rename 	 = false;
		       $handle->image_resize         = true;
		       $handle->auto_create_dir 	 = true;
		       $handle->dir_auto_chmod 		 = true;
		       $handle->dir_chmod 			 = 0777;
		       $handle->image_x              = 700;
		       $handle->image_y              = 261;
		       $handle->image_ratio_y        = false;
		       $handle->process(GALLERYIMAGE."/base");
		       if (!$handle->processed) {		          
			      	echo "Unable to upload base image";
			   }
			   
			   $handle->image_resize         = true;
			   $handle->image_x              = 261;			   
			   $handle->image_y              = 261;
		       $handle->image_ratio_y        = false;
			   $handle->process(GALLERYIMAGE."/small");
			   if (!$handle->processed) {
			   		echo "Unable to upload small image";
			   }
			   $handle->image_resize         = true;
			   $handle->image_x              = 100;			   
			   $handle->image_y              = 100;
		       $handle->image_ratio_y        = false;
			   $handle->process(GALLERYIMAGE."/thumb");
			   if (!$handle->processed) {
			   	echo "Unable to upload thumb image";
			   }
			   $handle->clean();
			   $data['banner'.$i] = $handle->file_dst_name;
			}
		}
		return $data;
	}
	
}