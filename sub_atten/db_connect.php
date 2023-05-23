
<?php
  $hostname = "db4free.net";
  $username = "mayank0099";
  $password = "Mp@306392";
  $dbname = "test_009";
// Create a connection
$conn = mysqli_connect($hostname, $username, $password, $dbname);

// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
?>