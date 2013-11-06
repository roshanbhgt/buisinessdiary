<?php

//database connection details
$connect = mysqli_connect('localhost', 'root', '', 'buisinessdiary');

if (!$connect) {
	die('Could not connect to MySQL: ' . mysqli_error());
}

// path where your CSV file is located
define('CSV_PATH','C:/xampp/htdocs/buisinessdiary/import/sheets/');

// Name of your CSV file
$csv_file = CSV_PATH . "import_regions.csv"; 

$tablename = 'regions';

if (($getfile = fopen($csv_file, "r")) !== FALSE) {
    $data = fgetcsv($getfile, 1000, ",");
    $num = 0;
    echo '<table border="1">';
    echo '<tr ><td>Country Id</td>td>State Id</td><td>Region</td><td></td></tr>';
    while (($data = fgetcsv($getfile, 1000, ",")) !== FALSE) {        
            $result = $data;
        	$str = implode(",", $result);
        	$slice = explode(",", $str);
        
            $col1 = $slice[0];
            $col2 = $slice[1];
            $col3 = ucfirst(strtolower(addslashes($slice[2])));
            $col4 = date("Y-m-d h:m:s");

			if($col1 == 'countryId'){
				continue;
			}
			
			echo '<tr><td>'.$col1.'</td><td>'.$col2.'</td><td>'.$col3.'</td>';
	
			// SQL Query to insert data into DataBase
			$query = "INSERT INTO ".$tablename."(countryId,stateId,region,created_date) VALUES($col1,$col2,'".$col3."','".$col4."')";
			
			if(mysqli_query($connect, $query)){
				echo '<td>Inserted</td></tr>';
			} else {
				echo '<td>Unable to inser</td></tr>';
			}        
			$num++;
    }
    echo '<tr><td colspan="3">'.$num.' Inserted</td></tr>';
    echo '</table>';
}

echo "File data successfully imported to database!!";
mysqli_close($connect);

?>
