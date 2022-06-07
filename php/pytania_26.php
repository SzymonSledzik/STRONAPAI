<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="../style/main.css">
	<title>Pytnia_26</title>
</head>

<body>

	<form method="POST" value="POST">
		<div id="holder"></div>
	</form>

	<?php

	include("connection.php");

	if (isset($_POST['send'])) {
		count_ponts();
	}

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
						<input name='inputs$i' type='range' max=2 min=0 value=0 class='slider'>
						<p>0ㅤㅤㅤ1ㅤㅤㅤ2</p>
					</div>
				";
		}
		echo "<div id='button_holder'> <button class='button' type='submit' name='send' value='submit'>Wyślij</button> </div>";
	}

	print_data();


	function count_ponts()
	{
		$suma = 0;
		$data = main();

		for ($i = 1; $i <= sizeof($data); $i++) {
			if (isset($_POST['inputs' . $i])) {
				$suma += $_POST['inputs' . $i];
			}
		}
		echo "<script>alert('Wynik: $suma');</script>";
	}

	?>

	<script type="text/javascript">
		window.onload = function() {
			let div = document.querySelectorAll('.div');
			let holder = document.querySelector('#holder');

			for (let i = 0; i < div.length; ++i) {
				holder.appendChild(div[i]);
			}

			holder.appendChild(document.querySelector("#button_holder"));
		}
	</script>
	<script> 
		var slider = document.getElementsById("myRange");
		var output = document.getElementsById("demo");
		output.innerHTML = slider.value;

		slider.oninput = function() {
		output.innerHTML = this.value;
		}
	</script>
</body>

</html>