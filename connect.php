<?php
$servername ="localhost";
$username ="root";
$password ="";
$dbname = "pagination";
// create connection
$conn = new mysqli($servername, $username ,$password,$dbname );
if($conn->connect_error){
    die("connection failed: ".$conn->connect_error);
}
?>