<style>
.button {
    margin: auto;
    background-color: #ff3333; /* red */
    border: none;
    color: white;
    padding: 20px 61px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 15px;
    cursor: pointer;
	 position:relative;
    float: left;
}

.button:hover {
    background-color: #19334d;
}
</style>
<style>
table {
    border-collapse: collapse;
    width: 70%;
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
	require "master_student.php";
?>
 


<div class="container">

<?php

$username = $_SESSION['login_user'];

// serve the page normally.


$localhost = 'localhost';
$dusername = 'root';
$dpassword = 'root';
$database = 'tutordb';
$connection = mysql_connect($localhost , $dusername , $dpassword);
mysql_select_db($database, $connection);
//if ($connection->connect_error) {
//    die("Connection failed: " . $conn->connect_error);
//} 

			$connect = new mysqli($localhost, $dusername, $dpassword, $database);

			if ($connect->connect_error) 
			{
				die("Connection failed: " . $connect->connect_error);
			}

			$query = "Select * FROM `course`";
			$res = mysqli_query($connect, $query);

			$options = "";
			while($row = mysqli_fetch_array($res))
			{
				$options = $options."<option>$row[1]</option>";
			}


//$mail =  $_SESSION['login_user'] ; 
$que =  " SELECT DISTINCT s.SFName as fname, s.SLName as lname, s2.SID as sid, s2.SFName as Tfname, s2.SLName as Tlname, c.CourseID as courseID, c.CourseName as courseName, sub.SubjectID as subjectID
		  FROM student s, student s2, course c, subject sub, requesttutoron r, teach t
		  WHERE s.SID = r.SID AND
				c.CourseID = r.CourseID AND
				c.SubjectID = sub.SubjectID AND
				s2.SID = t.SID AND
				t.CourseID = c.CourseID AND
				s.Username = '$username'";

$record = mysql_query($que) or print(mysql_error());
//echo $record;


//iterate over all the rows
if($record === FALSE){
echo $record;

}
if(mysql_num_rows($record) > 0 ){
   // echo mysql_num_rows($record);
   
		$counter = 0;
	
    	echo "<table align='center' width='100%' height='100%'>";
		
		echo "<tr>";
		echo "<th>Course ID</th>";
		echo "<th>Course Name</th>";
		echo "<th>Subject ID</th>";
		echo "<th>Tutor</th>";
		echo "<th>Feedback</th>";
		echo "<th>Delete</th>";
		echo "</tr>";

 while($row = mysql_fetch_array($record)) {
	   //echo mysql_num_rows($record);
       
	   $sid = $row['sid'];
	   $fname = $row['fname'];
	   $lname = $row['lname'];
	   $tfname = $row['Tfname'];
	   $tlname = $row['Tlname'];
	   $courseID = $row['courseID'];
       $courseName = $row['courseName'];
	   $subjectID = $row['subjectID'];
	   $counter++;
			
		echo "<tr>";
		echo "<td>".$courseID."</td>";
 		echo "<td>".$courseName."</td>";
		echo "<td>".$subjectID."</td>";
		echo "<td>".$tfname." ".$tlname."</td>";
		echo "<td>". "<a href = 'feedback.php?WriteFeed=$row[sid]'>Write Feedback</a>".  "</td>";
		echo "<td>". "<a href = 'delete_course_take.php?Delete=$row[courseID]'>Delete</a>".  "</td>";
		echo "</tr>";
			    
   }
 	echo "<h2>$fname $lname There are ($counter) course you take</h2>";
   		echo "</table>";
		
	echo "</div>
	
	
<div>
      <br><br>
      
</div>

<div class='container'>
</div>";

}


else
{
	echo "<h1>You do not have any course <a href='requestTutor.php'>Click here to request tutor</a></h1>";
}





?>
</div>
<br><br>	
	
<!--<div>
      <br><br>
      <div class="container" style = "background:#f2f2f2">   
          <form action="#" method="post">
          <table align="left">
				<h2>ADD NEW COURSE TO TEACH</h2>
				
				<tr>
					<td>Choose Course<td>
					<td><select name="teachCourse" id="teachCourse"><?php //echo $options; ?></select></td>
				</tr>
				
				<tr>
					<td colspan="3"><button type="submit" class="button button-block" />Add New Course To TEACH</button><td>
				</tr>
          </table>
          </form>
	   </div>
</div>

<div class="container">
</div>-->

<?php
	require "masterFooter.php";
?>