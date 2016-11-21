//I had to change the file name because Feedback is actucally a data structure name for feedback.
<?php
	require "master_student.php";
?>

<div class="container">

<form action="" method="post">
	<div class="form-inline">
		<p><h2>You will write feedback about...</h2><br></p>
	</div>
	
	<div class="textarea form-group col-sm-12 col-md-8">
		<label><label style="color:red">*</label> Comment (should be no more than 250 characters):</label>
		<textarea name="comment" class="form-control" required></textarea>
		<h3>Please rate your tutor</h3>
		<input type="radio" name="rate" value="male" checked> 1
		<input type="radio" name="rate" value="female"> 2
		<input type="radio" name="rate" value="other"> 3
		<input type="radio" name="rate" value="other"> 4
		<input type="radio" name="rate" value="other"> 5
	</div>
</form>
</div>

<?php
	require "masterFooter.php";
?>