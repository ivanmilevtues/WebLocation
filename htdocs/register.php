<?php
	require 'connect.php';
	// printf("I am in Register");
	if(isset($_POST['username'])){
		#printf("I am here in the user!");
		$username = $_POST['username'];
		$pass = $_POST['password'];
		$email = $_POST['email'];
		$con_pass = $_POST['con_password'];
		$username = stripslashes($username);
		$username = mysql_real_escape_string($username);
		$email = stripslashes($email);
		$email = mysql_real_escape_string($email);
		$password = stripslashes($password);
		$password = mysql_real_escape_string($password);
		if($email == '' || $pass == '' || $username == ''){
			echo("<div><h1>You have submited an empty box!</h1></div>");
			return 0;
		}else{
			$query = "INSERT INTO `userloginfo` (`username`, `email` , `password`) VALUES ('$username','$email','$pass')";
			$result = mysql_query($query);
			if($result){
				echo ("<div><h1>You are register successfully!</h1></div>");
			}else{
				printf("RIP!");
			}
		}
		
	}

?>