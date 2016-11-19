<?php
	
	//Don't forget to change your database password here
<<<<<<< HEAD
	$con = mysqli_connect("localhost", "root", "root", "tutordb");
=======
	$con = mysqli_connect("localhost:3306", "root", "", "tutordb");
>>>>>>> 9ccb30fc1497f271c62652a9998dc6e7d1946530
	
	if (mysqli_connect_error()) {
		echo "Failed to connect:".mysqli_connect_errno();
	}
<<<<<<< HEAD
?>
=======

?>


>>>>>>> 9ccb30fc1497f271c62652a9998dc6e7d1946530
