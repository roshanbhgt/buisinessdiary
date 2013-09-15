<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of System
 *
 * @author Roshan
 */
class System {
        /**
	 *
	 * @param null
	 * @return boolean
	 *
	 */
	public function getAllCountries(){
            global $dbObj;
            $sql = "SELECT * FROM ".COUNTRY;
            $res = $dbObj->fetch_all_array($sql);		
            return $res; 
	}
        
        public function getCountry($id){
            global $dbObj;
            $sql = "SELECT * FROM ".COUNTRY." WHERE countryId= ".$id;
            $res = $dbObj->query($sql);
            if($dbObj->num_rows($res) > 0){
                $res = $dbObj->fetch_array_assoc($res);
            }
            return $res;	
	}

        /**
         * 
         * @global Object $dbObj
         * @return array 
         * 
         */
        public function addCountry($country){
            global $dbObj;
            $sql = "INSERT INTO 
                        ".COUNTRY."
                    SET
                        title = '".$country."',
                        created_date = NOW() 
                    ";
            if($dbObj->query($sql)){
                return true;
            } else {
                return false;
            }
	}
        
        public function updateCountry($data){
            global $dbObj;
            $sql = "UPDATE 
                        ".COUNTRY."
                    SET
                        title = '".$data['country']."',
                        created_date = NOW() 
                    WHERE 
                        countryId = ".$data['id'];
            if($dbObj->query($sql)){
                return true;
            } else {
                return false;
            }
	}
        
        /**
         * 
         * @global Object $dbObj
         * @param String $country
         * @return boolean
         */
        public function isDuplicateCountry($country){
            global $dbObj;
            $sql = "SELECT * FROM ".COUNTRY." title= '".$country."' ";            
            $res = $dbObj->query($sql);
            if($dbObj->num_rows($res) > 0){
                    return true;
            } else {
                    return false;
            }
	}
        
}

?>
