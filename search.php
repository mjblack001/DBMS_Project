<?php
	session_start();

	$returnObject;

	if(isset($_GET['submit'])) 
	{	
		$localhost = 'localhost';
		$dusername = 'root';
		$dpassword = 'root';
		$database = 'tutordb';
		$connection = mysql_connect($localhost , $dusername , $dpassword);
		mysql_select_db($database, $connection);

		$searchTarget = $_GET['searchTarget'];

		$que =  "SELECT * FROM course WHERE CourseName LIKE '%" . $searchTarget . "%'";

		$record = mysql_query($que) or print(mysql_error());
		$_SESSION['record']=$record;

	}


?>