
<?php
  $hostname = "#";
  $username = "#";
  $password = "#";
  $dbname = "#";
// Create a connection
$conn = mysqli_connect($hostname, $username, $password, $dbname);

// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
?>