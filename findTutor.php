<?php
	require "master.php";

?>


<table background ="assets/img/TutorBackground.jpg" height="650" width="1260" align="center">
	<tr height="60">
		<td></td>
		<td></td>
		<td></td>
	</tr>
	
	<tr>
		<td width ="250"></td>
		<td height ="60">
			<h2>Enter a course name to search</h2>
			<form action="view_search_results.php" method="get" id="mySearchForm" onsubmit="search.php">
			<input type="text" name="searchTarget" id="searchTarget" style="height:67;width:400" required autocomplete="off"/>
			<button type="submit"  name="submit" style="height:67;width:214"><img src="assets/img/FindCourse.jpg" /></button>
			
			<!--<input type="image" src="assets/img/FindTutor.jpg"alt="submit" />
			<!--<a href="search.php"><img src="assets/img/FindTutor.jpg"></img></a>-->
			</form>
		</td>
		<td></td>
	</tr>
	
	<tr height ="10">
	</tr>
	<!-- Inner Table -->
	<tr>
		<td width ="70"></td>
		<td height ="60">
			<h2>Click here to browse all courses</h2>
			<form action="view_search_results.php" method="get" id="mySearchForm" onsubmit="search.php">
			<input type="hidden" name="searchTarget" id="searchTarget" style="height:67;width:400"/>
			<button type="submit"  name="submit" style="height:67;width:214"><img src="assets/img/FindCourse.jpg" /></button>
			
			<!--<input type="image" src="assets/img/FindTutor.jpg"alt="submit" />
			<!--<a href="search.php"><img src="assets/img/FindTutor.jpg"></img></a>-->
			</form>
		</td>
		<td></td>
	</tr>
	
	<tr>
		<td width ="100"></td>
		<td></td>
		<td></td>
		<td></td>
	</tr>
	
	<!-- End Inner Table -->
	
</table>

<?php
	require "masterFooter.php"
?>