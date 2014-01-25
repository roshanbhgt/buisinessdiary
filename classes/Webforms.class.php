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


}