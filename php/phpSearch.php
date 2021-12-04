<?php

$search = $_POST['search'];

$servername = "localhost";
$username = "root";
$password = "r00tpa55";
$db = "pharmacy";
$port = '13306';

$conn = new mysqli($servername, $username, $password, $db, $port);

if ($conn->connect_error){
	die("Connection failed: ". $conn->connect_error);
}

$sql = "select * from MedicineStock where MedicineName like '%$search%'";

$result = $conn->query($sql);

if ($result->num_rows > 0){
while($row = $result->fetch_assoc() ){
	echo $row["MedicineID"]."  ".$row["MedicineName"]."  ".$row["BatchNumber"]."  ".$row["MedicineManufacturer"]."  ".$row["StockQty"]."  ".$row["Price"]."  ".$row["ExpiryDate"]."<br>";
}
} else {
	echo "0 records";
}

$conn->close();

?>