<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Other file</title>
</head>
<body>

	<?php

		include("php/connection.php");

		function main() {
			global $con;

			$data = [];

			$sql = "SELECT Pytanie FROM pytania2";
			$query = mysqli_query($con, $sql);

			$counter = 1;
			while($row = mysqli_fetch_array($query)) {
				$data[$counter] = [
					"Question"=>$row['Pytanie']
				];
				$counter++;
			}

			return $data;
		}

		function print_data() {
			$data = main();

			for($i=1; $i<=sizeof($data); $i++) {
				$question = $data[$i]['Question'];
				echo "
					<div>
						<p>$i. $question</p>
						<input type='number' max=2 min=0 value=0>
					</div>
				";
			}
		}

		print_data();

	?>

</body>
</html>