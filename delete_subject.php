<?php
	require "master_admin.php";
	
	$username = $_SESSION['login_user'];

	
	$localhost = 'localhost';
	$dusername = 'root';
	$dpassword = 'root';
	$database = 'tutordb';
	$connection = mysql_connect($localhost , $dusername , $dpassword);
	mysql_select_db($database, $connection);
	

	if (isset($_GET['Delete']))
	{
		
		$subjectID = $_GET['Delete'];
		
		
		$que =  " DELETE FROM subject WHERE subjectID = '$subjectID'";
		$record = mysql_query($que) or print(mysql_error());
		
		$que2 =  " DELETE FROM course WHERE subjectID = '$subjectID'";
		$record2 = mysql_query($que2) or print(mysql_error());
		
		
		
		//echo "<meta http-equiv='refresh' content = '0;url=dealer.php'>";
		
		echo "<script>
					alert('The subject has been deleted successfully');
					window.location.href='http://localhost:8080/TutorProject/addSubject.php';
				</script>";


	}

	//iterate over all the rows
	if($record === FALSE)
	{
		//echo "3";
		
		//echo "VIN ". $vin;
		echo $record;
	}
?>