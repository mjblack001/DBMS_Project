<?php
	include_once('mysql_conn.php');
?>

<!-- This file is for loading subjects and correlated courses from the database dynamically-->


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<form action="anotherPage.php" name="add" method="post" id="form1">
	<div class="subject">	
		<label>Subject: </label>
		<select name="subject" onchange="getSubjectId(this.value);">
			<option value="">Select subject</option>
			<?php
				$query = "SELECT * FROM subject";
				$results = mysqli_query($con, $query);
				
				foreach ($results as $subject) {
				?>
				<option value="<?php echo $subject['SubjectID']; ?>"><?php echo $subject['SubjectName']; ?></option>
				<?php 
					}
				?>
		</select>
	</div>
	<br>
	
	<div class="course">
		<label>Course: </label>
		<select name="course" id="courseList">
			<option value="">Select course</option>
		</select>
	</div>
	<input type="submit">
</form>
</html>




<script src="//code.jquery.com/jquery-1.12.0.min.js"></script>

<script>
	function getSubjectId(val) {
		$.ajax({
			type: "POST",
			url: "getdata.php",
			data: "SubjectID=" + val,
			success: function(data) {
				$("#courseList").html(data);
			}
		});
	}	
</script>

