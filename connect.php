<?php
$Name = $_POST['name'];
$Surname = $_POST['surname'];
$Email = $_POST['email'];
$Age = $_POST['age'];
$Place = $_POST['place'];
$Adress = $_POST['adress'];
$School = $_POST['school'];
$Grade = $_POST['grade'];

$conn = new mysqli('localhost', 'root', '', 'UserData');
if ($conn->connect_error) {
    die('Connection Failed : ' . $conn->connect_error);
} else {
    $stmt = $conn->prepare("Insert into registration(name, surname, email, age, place, adress, school,grade)
    values(?, ?, ?, ?, ?, ?, ?, ?)");
    $stmt->bind_param("sssisssi", $Name, $Surname, $Email, $Age, $Place, $Adress, $School, $Grade);
    $stmt->execute();
    header("Location: /Formularz/php/pytania_50.php", true, 301);
    exit();
    $stmt->close();
    $conn->close();
}
