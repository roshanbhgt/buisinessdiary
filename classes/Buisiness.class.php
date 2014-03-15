<?php

/**
 * 
 * @author buisiness
 * @version 0.0.1
 * 
 */

class Buisiness {
	
	public function getBuisinessListByCat($cat_id){		
		global $dbObj;
		$sql = "SELECT buis.*, cntry.title as cntry, ste.title as stte, reg.region as region FROM ".BLIST." as buis 
			INNER JOIN ".COUNTRY." as cntry ON cntry.countryId = buis.country  
			INNER JOIN ".STATE." as ste ON ste.stateId = buis.state 
			INNER JOIN ".REGIONS." as reg ON reg.regionId = buis.city	
		WHERE buis.cat_id = ".$cat_id;
		$res = $dbObj->fetch_all_array($sql);				
		return $res;	
	}
	
}
?>