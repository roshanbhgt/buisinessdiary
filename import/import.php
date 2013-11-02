<?php

//database connection details
$connect = mysql_connect('localhost','root','');

if (!$connect) {
	die('Could not connect to MySQL: ' . mysql_error());
}	

//your database name
$cid =mysql_select_db('buisiness_diary',$connect);

// path where your CSV file is located
define('CSV_PATH','C:/xampp/htdocs/buisinessdiary/import/sheets/');

// Name of your CSV file
$csv_file = CSV_PATH . "import.csv"; 

$tablename = 'state';

if (($getfile = fopen($csv_file, "r")) !== FALSE) {
    $data = fgetcsv($getfile, 1000, ",");
    echo '<table border="1">';
    echo '<tr ><td>Country Id</td><td>Title</td><td></td></tr>';
    while (($data = fgetcsv($getfile, 1000, ",")) !== FALSE) {        
            $result = $data;
        	$str = implode(",", $result);
        	$slice = explode(",", $str);
        
            $col1 = $slice[0];
            $col2 = $slice[1];
            $col3 = date("Y-m-d h:m:s");

			if($col1 == 'countryId'){
				continue;
			}
			
			echo '<tr><td>'.$col1.'</td><td>'.$col2.'</td>';
	
			// SQL Query to insert data into DataBase
			$query = "INSERT INTO ".$tablename."(countryId,title,created_date) VALUES($col1,'".$col2."','".$col3."')";
			
			if(mysql_query($query, $connect )){
				echo '<td>Inserted</td></tr>';
			} else {
				echo '<td>Unable to inser</td></tr>';
			}        
    }
    echo '<tr><td colspan="3">'.$num.' Inserted</td></tr>';
    echo '</table>';
}

echo "File data successfully imported to database!!";
mysql_close($connect);

?>
