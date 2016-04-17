<?php
	$hostname = "localhost";
	$username = "root";
	$password = "";
	$database = "accounts";
	$con = mysql_connect($hostname,$username,$password);
	// printf("Connecting");
	if(!$con){
		die('Connection failed'.mysql_error());
	}else{
		#$printf("Success!\n");
	}

	mysql_select_db($database,$con);
?>