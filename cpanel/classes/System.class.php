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
		// cycle through the database tables
		if(is_array($tables)){			
			foreach($tables as $table){
				// Adding drop table query...
				$return.= 'DROP TABLE '.$table.';';
				
				// Selecting data to be back up from database...
				$sql = 'SELECT * FROM '.$table;
				$result = $dbObj->fetch_all_array($sql);
				
				$res = $dbObj->query($sql);
				$num_fields = $dbObj->num_fields($res);
				
				// Adding create table query...				
				$sql = 'SHOW CREATE TABLE '.$table;
				$res = $dbObj->query($sql);
				$row = $dbObj->fetch_array($res);
				$return.= "\n\n".$row[1].";\n\n";
				
				for ($i = 0; $i < $num_fields; $i++)
				{
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
		}
		
		// $handle = fopen(SESSION_BACKEND_PATH.'db-backup-'.date('Y-m-d h:m:s').'.sql','a+');
		// fwrite($handle,$return);
		// fclose($handle);
				
		return true;
	} 
        
}

?>
