<?php

/**
 *
 * @author buisiness
 * @version 0.0.1
 *
 */

class Buisiness {

	/**
	 *
	 * @param int $cat_id
	 * @return Ambigous <boolean, multitype:Ambigous <boolean, unknown> >
	 */
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

	/**
	 *
	 * @param int $id
	 */
	public function getBuisinessListById($id){
		global $dbObj;
		$sql = "SELECT buis.*, cntry.title as cntry, ste.title as stte, reg.region as region FROM ".BLIST." as buis
		INNER JOIN ".COUNTRY." as cntry ON cntry.countryId = buis.country
		INNER JOIN ".STATE." as ste ON ste.stateId = buis.state
		INNER JOIN ".REGIONS." as reg ON reg.regionId = buis.city
		WHERE buis.list_id = ".$id;
		$res = $dbObj->query($sql);
		if($dbObj->num_rows($res) > 0){
			$res = $dbObj->fetch_array_assoc($res);
			return $res;
		}else{
			return false;
		}
	}

}
?>