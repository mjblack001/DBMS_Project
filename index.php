<?php

	require "master.php";
	include("config.php");
	session_start();
   
   if($_SERVER["REQUEST_METHOD"] == "POST") {
      // username and password sent from form 
      
      $myusername = mysqli_real_escape_string($db,$_POST['logEmail']);
      $mypassword = mysqli_real_escape_string($db,$_POST['logPass']); 
      
      $sql = "SELECT * FROM login WHERE Username = '$myusername' AND Password = '$mypassword'";
      $result = mysqli_query($db,$sql);
      $row = mysqli_fetch_array($result,MYSQLI_ASSOC);
     // $active = $row['active'];
      
      $count = mysqli_num_rows($result);
      
      // If result matched $myusername and $mypassword, table row must be 1 row
		
      if($count == 1) {
    //     session_register("myusername");
         $_SESSION['login_user'] = $myusername;
		 $type = $row['Type'];
		
		if($type == "Student")
		{
			header("location: welcome_student.php");
		}
		else
		{
			header("location: welcome_admin.php");
		}
		
         
      }else {

         echo "<script>
				alert('Your Login Name or Password is invalid');
				//window.location.href='login.php';
		    </script>";	 
      }
   }

?>

<table background ="assets/img/TutorBackground.jpg" height="650" width="1260" align="center">
	
	<tr>
	<td></td>
		<td>
			<h1>Welcome to Online Tutor Schedule</h1>
			<p><b>Our website help you to apply as a tutor<br>
				and find a wonderful tutor as a student<br>
				easily.</b>
			</p>
		</td>
	</tr>
	<tr>
		<td width ="100"></td>
		<td>
			<form name="form1" action="index.php" method="post">
				<p>Username
					<input type="text" name="logEmail" id="logEmail" placeholder="Enter your usernam">
				</p>
				<p>Password 
					<input type="text" name="logPass" id="logPass" placeholder="Enter your password"><br>
					<p><a href="login.php">or sign up here</a></p>
					<p><label id="searchVal" style="color:red"></label></p>
				</p>
				<p><input type="submit" value="Login"></p>
			</form>
		</td>
		<td></td>
	</tr>
	
	<tr>
		<td width ="50" height ="200"></td>
		<td></td>
		<td></td>
	</tr>
	
	<tr height ="10">
		<td width ="50"></td>
		<td></td>
		<td></td>
	</tr>
	
	<tr>
		<td width ="70"></td>
		<td width ="200" height ="60" border="2"></td>
		<td></td>
	</tr>
	
	<tr height ="10">
		<td width ="50"></td>
		<td></td>
		<td></td>
	</tr>
	
	<tr>
		<td width ="70"></td>
		<td width ="200" height ="60" border="2"></td>
		<td></td>
	</tr>
	
	<tr height ="10">
		<td width ="50"></td>
		<td></td>
		<td></td>
	</tr>
	
	<tr>
		<td></td>
		<td></td>
		<td></td>
	</tr>
</table>
<?php
	require "masterFooter.php"
?>