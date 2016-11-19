<style>
table {
    border-collapse: collapse;
    width: 40%;
}

th, td {
    text-align: left;
    padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}
tr:hover {background-color: #f5f5f5}
 
th {
    background-color: #4CAF50;
    color: white;
}
</style>
<?php
	require('search.php');
	require 'master.php';

	$searchTarget = $_GET['searchTarget'];	
	//echo "Search results for \"" . $searchTarget . "\"";	

	$record = $_SESSION['record'];

	if($record === FALSE){
		echo $record;
	}
	echo '<br><br>';
	if(mysql_num_rows($record) > 0 ){
<<<<<<< HEAD
   
		$counter = 0;
		
		echo "<div><h2>Following is the searching result</h2><br></div>";
		
		echo "<table align='center'>
				<tr>
					<th><b>CourseID</b></th>
					<th><b>CourseName</b></th>
				</tr>";
		
=======
   	 			
>>>>>>> 9ccb30fc1497f271c62652a9998dc6e7d1946530
		while($row = mysql_fetch_array($record)) {
       
		$courseID = $row['CourseID'];
		$courseName = $row['CourseName'];
		$adminID = $row['AdminID'];
		$subjectID = $row['SubjectID'];   

		echo
			"<tr>
			<td>$courseID</td>
			<td>$courseName</td>
			</tr>";
		}
	}
	echo "</table><br><br>";
	
	require 'masterFooter.php';
	
?>