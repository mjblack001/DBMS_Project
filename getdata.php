<?php
	include_once "mysql_conn.php";
	
	if (!empty($_POST["SubjectID"])) {
<<<<<<< HEAD
		//$subjectID = "CH";
		$subjectID = $_POST["subjectID"]
		$query = "SELECT * FROM course WHERE subjectID = '$subjectID'";
=======
		$subjectID = "CS";//$_POST["subjectID"]
		$query = "SELECT * FROM course WHERE subjectID = 'CS'";
>>>>>>> 9ccb30fc1497f271c62652a9998dc6e7d1946530
		$results = mysqli_query($con, $query);
		
		foreach ($results as $course) {
			?>
			<option value="<?php echo $course["courseID"]; ?>"><?php echo $course["CourseName"]; ?></option>
			<?php
		}
	}
?>