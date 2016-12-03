<?php
	require "master_student.php";
	
	$username = $_SESSION['login_user'];
	
	$subject = $_POST['subject'];
	$course = $_POST['course'];
	$sid = $_POST['sid'];
	$type = $_POST['type'];
	
	echo "Username = $username<br> Subject = $subject<br> Course = $course<br> ID = $sid<br> Type = $type";
	
?>

<?php
	require "masterFooter.php";
?>