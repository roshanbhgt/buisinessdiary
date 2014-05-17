<?php

class Search {

	/**
	 *
	 * @param unknown_type $p
	 * @param unknown_type $q
	 *
	 */
	public function getSearchResult($p, $q){
		global $dbObj;
		$sql = "SELECT buis.*, cntry.title as cntry, ste.title as stte, reg.region as region FROM ".BLIST." as buis
		INNER JOIN ".COUNTRY." as cntry ON cntry.countryId = buis.country
		INNER JOIN ".STATE." as ste ON ste.stateId = buis.state
		INNER JOIN ".REGIONS." as reg ON reg.regionId = buis.city
		WHERE (buis.title LIKE '%".$q."%' OR buis.description LIKE '%".$q."%') AND (cntry.title LIKE '%".$p."%' OR ste.title LIKE '%".$p."%' OR reg.region LIKE '%".$p."%') ";
		$res = $dbObj->fetch_all_array($sql);;
		if(count($res) > 0){
			return $res;
		}else{
			return false;
		}
	}
}

?>