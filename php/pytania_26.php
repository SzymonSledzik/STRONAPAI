<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="../style/main.css">
	<title>Pytnia_26</title>
</head>

<body>

	<form method="POST">
		<div id="holder"></div>
	</form>

	<?php

	include("connection.php");
	function main()
	{
		global $con;

		$data = [];

		$sql = "SELECT Pytanie FROM pytania2";
		$query = mysqli_query($con, $sql);

		$counter = 1;
		while ($row = mysqli_fetch_array($query)) {
			$data[$counter] = [
				"Question" => $row['Pytanie']
			];
			$counter++;
		}

		return $data;
	}

	function print_data()
	{
		$data = main();

		for ($i = 1; $i <= sizeof($data); $i++) {
			$question = $data[$i]['Question'];
			echo "
					<div class='div'>
						<p>$i. $question</p>
						<input type='number' max=2 min=0 value=0>
					</div>
				";
		}
		echo "<div id='holder'> <button class='button' type='submit' value='submit'>Wyślij</button> </div>";
	}

	print_data();

	?>
</body>

</html>