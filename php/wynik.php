<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>Wyniki</title>
</head>

<body>

    <?php

    include("connection.php");

    function print_data()
    {
        global $con;

        //get user id from link
        $id = $_GET['id'];

        //get data from results table
        $sql = "SELECT * FROM Wynik WHERE UserID=$id";
        //query
        $query = mysqli_query($con, $sql);

        while ($row = mysqli_fetch_array($query)) {
            echo '
						<table>
							<thead>
								<th>Wynik z 50</th>
								<th>Wynik z 26</th>
							</thead>

							<tbody>
								<tr>
									<td>$row["results_50"]</td>
									<td>$row["results_26"]</td>
								</tr>
							</tbody>
						</table>
					';
        }
    }


    ?>


</body>

</html>