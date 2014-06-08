<?php
/**
 *
 * @author review
 * @version 0.0.1
 *
 */

class Review {
	
	
	/**
	 * Function to save rating data 
	 * Inserting data into bus_review table
	 */
	public function submitReview($data){
		global $dbObj;
		$sql = "INSERT INTO
					".REVIEW."
				SET
					user_id = '".$data['userid']."',
					bus_id = '".$data['busid']."',
					name = '".$_SESSION['firstname']."',
					title = '".$_SESSION['reviewtitle']."',
					rating = '".$data['rating']."',
					reviews = '".addslashes($data['message'])."',
					status = '0',
					created_date = NOW()
				";
		if($dbObj->query($sql)){
			return true;
		} else {
			return false;
		}
					
	}
	
	
	/**
	 * Function to get reviews for business 
	 * Get business id
	 */
	public function getReviews($busId){
		global $dbObj;
		$sql = "SELECT * FROM ".REVIEW." WHERE bus_id = ".$busId." AND status = 0 ORDER BY created_date DESC ";
		$res = $dbObj->fetch_all_array($sql);;
		if(count($res) > 0){
			return $res;
		}else{
			return false;
		}
	}
	
	/**
	 * Function to get reviews for business 
	 * Get business id
	 */
	public function getRating($busId){
		global $dbObj;
		$sql = "SELECT rating, count(*) as count FROM ".REVIEW." WHERE bus_id = ".$busId." AND status = 0 GROUP BY rating ASC ";
		$res = $dbObj->fetch_all_array($sql);;
		if(count($res) > 0){
			return $this->calcRating($res);
		}else{
			return 0;
		}
	}
	
	/**
	 * Function to calculate rating from array of rating data
	 */
	public function calcRating($data) {
		$sumUsers = 0;
		$sumRating = 0;
		foreach($data as $val) {
			$sumRating += $val['rating'] * $val['count'];
			$sumUsers += $val['count'];
		}
		$rating = $sumRating/$sumUsers;
		return ceil($rating);
	}
	
	/**
	 * Function to get reviews posted by user
	 * Get business id
	 */
	public function getReviewsByUser($userid){
		global $dbObj;
		$sql = "SELECT breview.*, bus.title FROM bus_review AS breview INNER JOIN `blist` AS bus ON bus.list_id = breview.bus_id WHERE user_id = ".$userid." ORDER BY breview.created_date DESC";
		$res = $dbObj->fetch_all_array($sql);;
		if(count($res) > 0){
			return $res;
		}else{
			return false;
		}
	}
	 
}