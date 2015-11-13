<?php 
$conn= new mysqli("localhost", "HappyApp", "password", "happyapp");

if ($conn->connect_error) {
     die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT * FROM monday";
$result = $conn->query($sql);
$row = $result->fetch_row();

$conn->close();
?>

