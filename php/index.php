<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="../style/style-other.css">
	<title>Strona w PHP</title>
</head>

<body>

	<form method="POST">
		<div id="holder"></div>
		<button type="submit" name="submit">Submit</button>
	</form>

	<?php

	include("connection.php");

	if (isset($_POST['submit'])) {
		submit_data();
	}

	function get_data()
	{
		global $con, $data;

		$char_array = ['K', 'S', 'M', 'I', 'T'];
		$data = [];

		for ($i = 0; $i < sizeof($char_array); $i++) {
			$basic_sql = "SELECT * FROM test WHERE id_char='{$char_array[$i]}'";
			$basic_query = mysqli_query($con, $basic_sql);

			$counter = 1;
			while ($row = mysqli_fetch_array($basic_query)) {
				$data[$char_array[$i]][$counter] = [
					"Question" => $row['Pytanie']
				];
				$counter++;
			}
		}

		return $data;
	}

	function print_data()
	{
		$array_data = get_data();

		$char_array = ['K', 'S', 'M', 'I', 'T'];

		$count = 1;
		for ($i = 1; $i <= 10; $i++) {
			for ($z = 0; $z < sizeof($char_array); $z++) {
				//print question
				$question = $count . '. ' . ($array_data[$char_array[$z]][$i]["Question"]) . "<br>";
				//create questions
				echo "
						<div class='div' id='div$count'>
							<p>$question</p>

							<label for='true$i$char_array[$z]' class='label'>Tak</label>
							<input type='radio' name='checkbox$i$char_array[$z]' id='true$i$char_array[$z]' value='Tak'>

							<label for='nie$i$char_array[$z]' class='label'>Nie</label>
							<input type='radio' name='checkbox$i$char_array[$z]' id='nie$i$char_array[$z]'>

						</div>
					";
				$count++;
			}
		}
	}

	print_data();


	function submit_data()
	{
		$points = [
			"K" => 0,
			"S" => 0,
			"M" => 0,
			"I" => 0,
			"T" => 0
		];

		$array_with_char = ['K', 'S', 'M', 'I', 'T'];

		$error = 0;
		for ($i = 1; $i <= 2; $i++) {
			for ($z = 0; $z < sizeof($array_with_char); $z++) {
				if (isset($_POST["checkbox" . $i . $array_with_char[$z]])) {
					if ($_POST["checkbox" . $i . $array_with_char[$z]] == "Tak") {
						$points[$array_with_char[$z]] += 1;
					}
				} else if (!isset($_POST["checkbox" . $i . $array_with_char[$z]])) {
					$error = 1;
				}
			}
		}

		if ($error == 1) {
			echo "<script>alert('Nie zaznaczono odpowiedzi!');</script>";
		} else {
			//highest value
			$maxVal = max($points);
			//search key fo the highest valueś
			$maxKey = array_search($maxVal, $points);

			echo "Highest score for $maxKey: $maxVal";
		}
	}



	?>


	<script type="text/javascript">
		window.onload = function() {
			//get all questions div
			let questions_div = document.querySelectorAll(".div");

			for (let i = 0; i < questions_div.length; ++i) {
				//append question div into holder
				document.querySelector("#holder").appendChild(questions_div[i]);
			}
		}
	</script>

</body>

</html>