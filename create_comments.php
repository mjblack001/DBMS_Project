<?php

	include "Feedback.php";
	include "mysql_conn.php";
	$studentID = 1; //user id, besure to change to current user
	$rating = $_POST["rating"];
	$comment = $_POST["comment"];
	date_default_timezone_set("America/New_York");
	$date = date("F j, Y, g:i a");  //get current date
	$feedback = new Feedback($comment, $date, $rating);
	
	//Abdul, We need to change FeedID to be auto incremented.
	$query = "INSERT INTO feedback (Comment, Date) 
		VALUES ('".$feedback->getComment()."',"."'".$feedback->getDate()."')";
	mysqli_query($con, $query);
	
	//Todo: if rating is present, we need to insert into feedback_rate table as well
	
?>