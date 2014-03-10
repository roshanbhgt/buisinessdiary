<?php

//database connection details
$connect = mysqli_connect('localhost', 'root', 'root', 'businessdiary');

if (!$connect) {
	die('Could not connect to MySQL: ' . mysqli_error());
}

// path where your CSV file is located
define('CSV_PATH','D:/UwAmp/www/buisinessdiary/import/sheets/');

// Name of your CSV file
$csv_file = CSV_PATH . "import-list.csv"; 

$tablename = 'regions';

if (($getfile = fopen($csv_file, "r")) !== FALSE) {
    $data = fgetcsv($getfile, 1000, ",");
    $num = 0;
    echo '<table border="1">';
    echo '<tr >
			<td>Sr No</td>
			<td>Category</td>
			<td>Business Name</td>
			<td>Information</td>
			<td>Address 1</td>
			<td>Address 2</td>
			<td>City</td>
			<td>State</td>
			<td>Country</td>
			<td>Landlines</td>
			<td>Mobile</td>
			<td>Fax</td>
			<td>Website</td>
			<td></td>
		</tr>';
    while (($data = fgetcsv($getfile, 1000, ",")) !== FALSE) {  
		
		echo $sql = 'INSERT INTO 
					blist 
				SET 			
					cat_id = '.$data[0].',
					title = "'.addslashes($data[1]).'",
					description = "'.addslashes($data[2]).'",
					address1 = "'.addslashes($data[3]).'",
					address2 = "'.addslashes($data[4]).'",
					city = "'.$data[5].'",
					state = "'.$data[6].'",
					country = "'.$data[7].'",
					postcode = "'.$data[8].'",
					phone = "'.$data[9].'",
					mobile = "'.$data[10].'",
					fax = "'.$data[11].'",
					website = "'.$data[12].'",
					created_date = NOW()
			';
		
			
		if(mysqli_query($connect, $sql)){
			echo '<td>Inserted</td></tr>';
		} else {
			echo '<td>Unable to inser</td></tr>';
		}        
		exit;
		$num++;
    }
    echo '<tr><td colspan="3">'.$num.' Inserted</td></tr>';
    echo '</table>';
}

echo "File data successfully imported to database!!";
mysqli_close($connect);

?>
