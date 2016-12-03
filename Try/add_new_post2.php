<?php
	include_once('mysql_conn.php');
	//require "master.php";
?>

<!-- This file is for loading subjects and correlated courses from the database dynamically-->


<!--<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">-->
<html>
<div>
      <br><br>
      <div class="container" style = "background:#f2f2f2">   
          <form action="Try/anotherPage.php" method="post">
          <table align="left">
				<h2>ADD NEW COURSE TO TEACH</h2>
				
				<tr>
					<td>Choose Subject</td>
					<td>
						<div class="subject">
							<select name="subject" onchange="getSubjectId(this.value);">
							<option value="">Please Select Subject</option>
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
					</td>
				</tr>
				
				<tr>
					<td>Choose Course</td>
					<td>
						<div class="course">
							<select name="course" id="courseList">
								<option>Please Select Course</option>
							</select>
						</div>
					</td>
				</tr>
				
				<tr>
					<td colspan="3"><button type="submit" class="button button-block" />Add New Course To TEACH</button></td>
				</tr>
          </table>
				<!--<input type="hidden" name="type" id="type" value="<?php //echo $type; ?>">
				<input type="hidden" name="sid" id="sid" value="<?php //echo $sid; ?>">-->
				
          </form>
	   </div>
</div>

<br><br>	

<div class="container">
</div>
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

<?php
	//require "masterFooter.php";
?>