<?php

/**
 * 
 * @author Gallery
 * @version 0.0.1
 * 
 */

class Gallery {
	
	public function getGalleryImages(){
		global $dbObj;
		$sql = "SELECT * FROM ".GALLERY." AS gal 
					INNER JOIN 
				".GALLERYIMAGES." AS galimg 
					ON 
				gal.galleryId = galimg.galleryId 
					WHERE gal.status = 'active' ";
		$res = $dbObj->fetch_all_array($sql);
		return $res;
	}
	
	
}