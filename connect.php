<?php
$Name = $_POST['name'];
$Surname = $_POST['surname'];
$Email = $_POST['email'];
$Age = $_POST['age'];
$Place = $_POST['place'];
$Adress = $_POST['adress'];
$School = $_POST['school'];
$Grade = $_POST['grade'];

$conn = new mysqli('192.168.101.62', 'labzsk_ssledzik', '771pen12a', 'labzsk_ssledzik');
if ($conn->connect_error) {
    die('Connection Failed : ' . $conn->connect_error);
} else {
    $stmt = $conn->prepare("Insert into registration(name, surname, email, age, place, adress, school,grade)
    values(?, ?, ?, ?, ?, ?, ?, ?)");
    $stmt->bind_param("sssisssi", $Name, $Surname, $Email, $Age, $Place, $Adress, $School, $Grade);
    $stmt->execute();
    header("Location: ./php/pytania_50.php?id=$ID", true, 301);
    exit();
    $stmt->close();
    $conn->close();
}
