<?php

	$servername = "192.168.101.62";
	$username = "labzsk_ssledzik";
	$password = "771pen12a";
	$database = "labzsk_ssledzik";

	//connectiong with database
	$con = mysqli_connect($servername, $username, $password, $database);


	//checking conection
	if (!$con) {
	  die("Connection failed: " . mysqli_connect_error());
	}

?>