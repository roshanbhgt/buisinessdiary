<?php
/**
 *
 * @param varchar $email
 * @return boolean
 */
function validateEmail($email){
	if(preg_match("/^[a-z0-9]+([_\\.-][a-z0-9]+)*@([a-z0-9]+([\.-][a-z0-9]+)*)+\\.[a-z]{2,}$/i", $email) ) {
		return true;
	} else {
		return false;
	}
}
?>
