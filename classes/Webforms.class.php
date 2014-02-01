<?php
/**
 * Created by PhpStorm.
 * User: HP
 * Date: 16/1/14
 * Time: 8:54 PM
 */

class Webforms {

    /**
     * @param $data
     * @return bool
     *
     */
    public function contactus($data){
        global $dbObj;
        $sql = "INSERT INTO
					".CONTACTUS."
				SET
					name = '".$data['name']."',
					mobile = '".$data['mobile']."',
					email = '".$data['email']."',
					message = '".$data['message']."',
					created_date = NOW()
				";
        if($dbObj->query($sql)){
            return true;
        } else {
            return false;
        }
    }
    
    /**
     * @param $data
     * @return bool
     *
     */
    public function feedback($data){
    	global $dbObj;
    	$sql = "INSERT INTO
		    		".FEEDBACK."
		    	SET
		    		ui = '".$data['ui']."',
		    		search = '".$data['search']."',
		    		info = '".$data['info']."',
			    	name = '".$data['name']."',
			    	mobile = '".$data['mobile']."',
			    	email = '".$data['email']."',
			    	message = '".$data['message']."',
			    	created_date = NOW()
		    	";
    	if($dbObj->query($sql)){
    		return true;
    	} else {
    		return false;
    	}
    }

    public function quikAddListing($data){
        global $dbObj;
        $sql = "INSERT INTO
		    		".QUIKLIST."
		    	SET
		    		cat_id = '".$data['category']."',
		    		company = '".$data['company']."',
		    		description = '".$data['description']."',
			    	address = '".$data['address']."',
			    	city = '".$data['city']."',
			    	email = '".$data['email']."',
			    	state = '".$data['state']."',
			    	country = '".$data['country']."',
			    	postcode = '".$data['postcode']."',
			    	telephone = '".$data['telephone']."',
			    	fax = '".$data['fax']."',
			    	website = '".$data['website']."',
			    	created_date = NOW()
		    	";
        if($dbObj->query($sql)){
            return true;
        } else {
            return false;
        }
    }

    public function suggestAddListing($data){

        global $dbObj;
        $sql = "INSERT INTO
		    		".SUGGESTLIST."
		    	SET
		    	    yname = '".$data['yname']."',
		    		yemail = '".$data['yemail']."',
		    		cat_id = '".$data['category']."',
		    		company = '".$data['company']."',
		    		description = '".$data['description']."',
			    	address = '".$data['address']."',
			    	city = '".$data['city']."',
			    	email = '".$data['email']."',
			    	state = '".$data['state']."',
			    	country = '".$data['country']."',
			    	postcode = '".$data['postcode']."',
			    	telephone = '".$data['telephone']."',
			    	fax = '".$data['fax']."',
			    	website = '".$data['website']."',
			    	created_date = NOW()
		    	";
        if($dbObj->query($sql)){
            return true;
        } else {
            return false;
        }
    }


}