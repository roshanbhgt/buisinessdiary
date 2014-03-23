<?php
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

		/**
		 *
		 *
		 */
		public function getAllStates($pageId){
			if($pageId > 0){
				$pageId = $pageId - 1;
			}
			global $dbObj;
			$sql = "SELECT st.*, ct.title AS ctitle FROM ".STATE." AS st
					INNER JOIN ".COUNTRY." AS ct ON st.countryId=ct.countryId ";
			$count = $dbObj->num_rows($dbObj->query($sql));
			$pageNumCount = getPagination($count);
			if($pageId > 0 || $count > REC_PER_PAGE){
				$sql .= "LIMIT ".($pageId*REC_PER_PAGE).", ".REC_PER_PAGE;
			}
			$res = $dbObj->fetch_all_array($sql);
			return array("states"=>$res, "pagecount"=>$pageNumCount);
		}

		/**
		 *
		 *
		 */
		public function getAllRegions($pageId){
			if($pageId>0){
				$pageId = $pageId - 1;
			}
			global $dbObj;
			$sql = "SELECT rt.*, ct.title AS ctitle, st.title AS stitle FROM ".REGIONS." AS rt
					INNER JOIN ".STATE." AS st ON st.stateId=rt.stateId
					INNER JOIN ".COUNTRY." AS ct ON st.countryId=ct.countryId ";
			$count = $dbObj->num_rows($dbObj->query($sql));
			$pageNumCount = getPagination($count);
			if($pageId > 0 || $count > REC_PER_PAGE){
				$sql .= "LIMIT ".($pageId*REC_PER_PAGE).", ".REC_PER_PAGE;
			}
			$res = $dbObj->fetch_all_array($sql);
			return array("regions"=>$res, "pagecount"=>$pageNumCount);
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
            $sql = "SELECT * FROM ".COUNTRY." WHERE title= '".$country."' ";
            $res = $dbObj->query($sql);
            if($dbObj->num_rows($res) > 0){
                    return true;
            } else {
                    return false;
            }
	}



	public function getBackupList(){
		global $dbObj;
		$sql = "SELECT * FROM ".BACKUP." ORDER BY backup_date DESC; ";
		$res = $dbObj->fetch_all_array($sql);
		return $res;
	}

	public function backuupDatabase(){

		global $dbObj;
		$tables = array();
		$sql = 'SHOW TABLES';
		$res = $dbObj->fetch_all_array($sql);

		if(is_array($res)){
			foreach ($res as $row) {
				$tables[] = array_shift($row);
			}
		} else {
			return false;
		}

		$return = "";
		$return .= "SET foreign_key_checks = 0;";
		$return.= "\n";
		// cycle through the database tables
		if(is_array($tables)){
			foreach($tables as $table){
				// Adding drop table query...
				$return.= "\n";
				$return.= "DROP TABLE ".$table.";";

				// Selecting data to be back up from database...
				$sql = 'SELECT * FROM '.$table;
				$result = $dbObj->fetch_all_array($sql, false);

				$res = $dbObj->query($sql);
				$num_fields = $dbObj->num_fields($res);

				// Adding create table query...
				$sql = 'SHOW CREATE TABLE '.$table;
				$res = $dbObj->query($sql);
				$row = $dbObj->fetch_array($res);
				$return.= "\n\n".$row[1].";\n\n";
				foreach ($result as $row)
				{
					$return.= 'INSERT INTO '.$table.' VALUES(';
					for($j=0; $j<$num_fields; $j++)
					{
						$row[$j] = addslashes($row[$j]);
						$row[$j] = str_replace("\n","\\n",$row[$j]);
						if (isset($row[$j])) { $return.= '"'.$row[$j].'"' ; } else { $return.= '""'; }
						if ($j<($num_fields-1)) { $return.= ','; }
					}
					$return.= ");\n";
				}
			}
			$return .= 'SET foreign_key_checks = 1;';
			$return.="\n\n\n";
		}

		$pathtobackup = DB_BACKUP_PATH.'/db-backup-'.date('Ymdhms').'.sql';
		$handle = fopen($pathtobackup,'w');
		fwrite($handle,$return);
		fclose($handle);

		$sql = "INSERT INTO
                        ".BACKUP."
                    SET
                        username = '".$_SESSION['admin']."',
                        bakupfile = '".$pathtobackup."',
                        backupsize = '".filesize($pathtobackup)." bytes',
                        backup_date = NOW()
                    ";
		if($dbObj->query($sql)){
			return true;
		} else {
			return false;
		}
	}

	public function getStates(){
		global $dbObj;
		$sql = "SELECT * FROM ".STATE;
		$res = $dbObj->fetch_all_array($sql);
		return $res;
	}

	public function getRegions(){
		global $dbObj;
		$sql = "SELECT * FROM ".REGIONS;
		$res = $dbObj->fetch_all_array($sql);
		return $res;
	}
}

?>
